# Injects Tempo's native pieces into the freshly generated Capacitor iOS
# project: the TempoNative plugin into the App target, and a TempoWidgets
# app-extension target (Live Activity + today widget), embedded in the app.
# Runs in CI on macOS after `cap sync ios`; files are copied beforehand:
#   ios/App/App/TempoNative/{TempoNativePlugin.swift,.m,TempoAttributes.swift}
#   ios/App/TempoWidgets/{TempoWidgets.swift,TempoAttributes.swift,Info.plist}
require 'xcodeproj'

project = Xcodeproj::Project.open('ios/App/App.xcodeproj')
app = project.targets.find { |t| t.name == 'App' }
raise 'App target not found' unless app

# --- plugin sources into the App target ---
plugin_group = project.main_group.new_group('TempoNative', 'App/TempoNative')
%w[TempoNativePlugin.swift TempoNativePlugin.m TempoAttributes.swift].each do |f|
  ref = plugin_group.new_file(f)
  app.add_file_references([ref])
end

# --- widget extension target ---
wt = project.new_target(:app_extension, 'TempoWidgets', :ios, '17.0')
wgroup = project.main_group.new_group('TempoWidgets', 'TempoWidgets')
%w[TempoWidgets.swift TempoAttributes.swift].each do |f|
  ref = wgroup.new_file(f)
  wt.add_file_references([ref])
end
wgroup.new_file('Info.plist')

wt.build_configurations.each do |c|
  bs = c.build_settings
  bs['PRODUCT_BUNDLE_IDENTIFIER'] = 'com.gorkyaitech.tempo.TempoWidgets'
  bs['INFOPLIST_FILE'] = 'TempoWidgets/Info.plist'
  bs['GENERATE_INFOPLIST_FILE'] = 'YES'
  bs['INFOPLIST_KEY_CFBundleDisplayName'] = 'Tempo'
  bs['SWIFT_VERSION'] = '5.0'
  bs['IPHONEOS_DEPLOYMENT_TARGET'] = '17.0'
  bs['TARGETED_DEVICE_FAMILY'] = '1,2'
  bs['SKIP_INSTALL'] = 'YES'
  bs['CURRENT_PROJECT_VERSION'] = '1'
  bs['MARKETING_VERSION'] = '1.0'
  bs['CODE_SIGN_STYLE'] = 'Automatic'
end

# --- embed the extension in the app ---
app.add_dependency(wt)
embed = app.copy_files_build_phases.find { |p| p.symbol_dst_subfolder_spec == :plug_ins }
unless embed
  embed = app.new_copy_files_build_phase('Embed App Extensions')
  embed.symbol_dst_subfolder_spec = :plug_ins
end
bf = embed.add_file_reference(wt.product_reference)
bf.settings = { 'ATTRIBUTES' => ['RemoveHeadersOnCopy'] }

project.save
puts 'Xcode project: TempoNative plugin + TempoWidgets extension injected'

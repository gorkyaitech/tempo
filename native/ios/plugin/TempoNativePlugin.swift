import Foundation
import Capacitor
import ActivityKit
import WidgetKit

// Bridge between the web app and iOS surfaces. The web side calls
// TempoNative.sync(...) on every state save; this keeps the Live Activity
// (lock screen + Dynamic Island) and the home/lock widgets in step.
@objc(TempoNativePlugin)
public class TempoNativePlugin: CAPPlugin {
    static let appGroup = "group.com.gorkyaitech.tempo"

    @objc func sync(_ call: CAPPluginCall) {
        let running = call.getBool("running") ?? false
        let desc = call.getString("desc") ?? "Tracking"
        let project = call.getString("project") ?? ""
        let startMs = call.getDouble("startMs") ?? 0
        let todayHM = call.getString("todayHM") ?? "0:00"

        // Widget data via the shared app group
        if let d = UserDefaults(suiteName: TempoNativePlugin.appGroup) {
            d.set(todayHM, forKey: "todayHM")
            d.set(running, forKey: "running")
            d.set(desc, forKey: "desc")
        }

        if #available(iOS 16.2, *) {
            let start = Date(timeIntervalSince1970: startMs / 1000.0)
            Task { @MainActor in
                if running {
                    let state = TempoAttributes.ContentState(startDate: start, desc: desc, project: project)
                    let content = ActivityContent(state: state, staleDate: nil)
                    if let current = Activity<TempoAttributes>.activities.first {
                        await current.update(content)
                    } else if ActivityAuthorizationInfo().areActivitiesEnabled {
                        _ = try? Activity.request(attributes: TempoAttributes(), content: content)
                    }
                } else {
                    for activity in Activity<TempoAttributes>.activities {
                        await activity.end(nil, dismissalPolicy: .immediate)
                    }
                }
                WidgetCenter.shared.reloadAllTimelines()
            }
        } else {
            WidgetCenter.shared.reloadAllTimelines()
        }
        call.resolve()
    }
}

import WidgetKit
import SwiftUI
import ActivityKit

// Tempo brand colors
private let tempoRed = Color(red: 0.925, green: 0.188, blue: 0.075)
private let tempoInk = Color(red: 0.126, green: 0.118, blue: 0.114)

@main
struct TempoWidgetsBundle: WidgetBundle {
    var body: some Widget {
        TempoTodayWidget()
        TempoLiveActivity()
    }
}

// MARK: - Live Activity (lock screen + Dynamic Island)

struct TempoLiveActivity: Widget {
    var body: some WidgetConfiguration {
        ActivityConfiguration(for: TempoAttributes.self) { context in
            // Lock screen — the Modernist red band
            HStack(alignment: .center) {
                VStack(alignment: .leading, spacing: 4) {
                    Text("TEMPO · TRACKING")
                        .font(.system(size: 10, weight: .heavy))
                        .kerning(1.6)
                        .opacity(0.85)
                    Text(context.state.desc)
                        .font(.system(size: 16, weight: .bold))
                        .lineLimit(1)
                    if !context.state.project.isEmpty {
                        Text(context.state.project)
                            .font(.system(size: 11, weight: .medium))
                            .opacity(0.8)
                            .lineLimit(1)
                    }
                }
                Spacer()
                Text(context.state.startDate, style: .timer)
                    .font(.system(size: 30, weight: .heavy))
                    .monospacedDigit()
                    .multilineTextAlignment(.trailing)
                    .frame(maxWidth: 96)
            }
            .padding(16)
            .foregroundColor(.white)
            .activityBackgroundTint(tempoRed)
            .activitySystemActionForegroundColor(.white)
        } dynamicIsland: { context in
            DynamicIsland {
                DynamicIslandExpandedRegion(.leading) {
                    VStack(alignment: .leading, spacing: 2) {
                        Text("TEMPO")
                            .font(.system(size: 9, weight: .heavy))
                            .kerning(1.4)
                            .foregroundColor(tempoRed)
                        Text(context.state.desc)
                            .font(.system(size: 14, weight: .bold))
                            .foregroundColor(.white)
                            .lineLimit(1)
                    }
                }
                DynamicIslandExpandedRegion(.trailing) {
                    Text(context.state.startDate, style: .timer)
                        .font(.system(size: 22, weight: .heavy))
                        .monospacedDigit()
                        .foregroundColor(.white)
                        .frame(maxWidth: 76)
                }
                DynamicIslandExpandedRegion(.bottom) {
                    if !context.state.project.isEmpty {
                        Text(context.state.project)
                            .font(.system(size: 11, weight: .medium))
                            .foregroundColor(.gray)
                            .lineLimit(1)
                    }
                }
            } compactLeading: {
                Text("T")
                    .font(.system(size: 15, weight: .heavy))
                    .foregroundColor(tempoRed)
            } compactTrailing: {
                Text(context.state.startDate, style: .timer)
                    .font(.system(size: 13, weight: .bold))
                    .monospacedDigit()
                    .foregroundColor(.white)
                    .frame(maxWidth: 52)
            } minimal: {
                Text("T")
                    .font(.system(size: 15, weight: .heavy))
                    .foregroundColor(tempoRed)
            }
        }
    }
}

// MARK: - Today widget (home screen + lock screen)

struct TodayEntry: TimelineEntry {
    let date: Date
    let todayHM: String
    let running: Bool
    let desc: String
}

struct TodayProvider: TimelineProvider {
    private func read() -> TodayEntry {
        let d = UserDefaults(suiteName: "group.com.gorkyaitech.tempo")
        return TodayEntry(
            date: Date(),
            todayHM: d?.string(forKey: "todayHM") ?? "0:00",
            running: d?.bool(forKey: "running") ?? false,
            desc: d?.string(forKey: "desc") ?? ""
        )
    }
    func placeholder(in context: Context) -> TodayEntry {
        TodayEntry(date: Date(), todayHM: "5:06", running: true, desc: "Homepage redesign")
    }
    func getSnapshot(in context: Context, completion: @escaping (TodayEntry) -> Void) {
        completion(read())
    }
    func getTimeline(in context: Context, completion: @escaping (Timeline<TodayEntry>) -> Void) {
        completion(Timeline(entries: [read()], policy: .after(Date().addingTimeInterval(1800))))
    }
}

struct TempoTodayWidget: Widget {
    var body: some WidgetConfiguration {
        StaticConfiguration(kind: "TempoToday", provider: TodayProvider()) { entry in
            TodayView(entry: entry)
                .containerBackground(for: .widget) { tempoInk }
        }
        .configurationDisplayName("Today's hours")
        .description("Tracked time today, at a glance.")
        .supportedFamilies([.systemSmall, .accessoryRectangular])
    }
}

struct TodayView: View {
    let entry: TodayEntry
    @Environment(\.widgetFamily) var family

    var body: some View {
        if family == .accessoryRectangular {
            HStack {
                VStack(alignment: .leading, spacing: 1) {
                    Text("TEMPO").font(.system(size: 9, weight: .heavy)).kerning(1.2)
                    Text(entry.todayHM).font(.system(size: 20, weight: .heavy)).monospacedDigit()
                }
                Spacer()
                if entry.running { Circle().frame(width: 6, height: 6) }
            }
        } else {
            VStack(alignment: .leading, spacing: 0) {
                Text("TEMPO")
                    .font(.system(size: 10, weight: .heavy))
                    .kerning(1.8)
                    .foregroundColor(tempoRed)
                Spacer()
                Text(entry.todayHM)
                    .font(.system(size: 34, weight: .heavy))
                    .monospacedDigit()
                    .foregroundColor(.white)
                HStack(spacing: 5) {
                    if entry.running {
                        Circle().fill(tempoRed).frame(width: 7, height: 7)
                        Text("tracking").font(.system(size: 11, weight: .semibold)).foregroundColor(tempoRed)
                    } else {
                        Text("today").font(.system(size: 11, weight: .medium)).foregroundColor(.gray)
                    }
                }
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .leading)
        }
    }
}

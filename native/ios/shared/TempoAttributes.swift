import ActivityKit
import Foundation

// Shared between the app target and the widget extension — ActivityKit
// matches Live Activities to their UI by this attributes type.
@available(iOS 16.2, *)
struct TempoAttributes: ActivityAttributes {
    public struct ContentState: Codable, Hashable {
        var startDate: Date
        var desc: String
        var project: String
    }
}

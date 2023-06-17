import SwiftUI

struct NavigationDefaults {
    var columnVisibility: NavigationSplitViewVisibility = .all
    var preferredCompactColumn: NavigationSplitViewColumn = .sidebar
    var selectedDestination: Destination? = .calendar
    var tintColor: Color?
}

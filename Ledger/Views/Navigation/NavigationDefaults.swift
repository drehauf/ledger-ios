import SwiftUI

struct NavigationDefaults {
    var columnVisibility: NavigationSplitViewVisibility = .all
    var preferredCompactColumn: NavigationSplitViewColumn = .sidebar
    var defaultNavigationItem: NavigationItem? = .calendar
    var tintColor: Color?
}

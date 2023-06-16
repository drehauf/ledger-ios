import SwiftUI

@main struct DashboardApp: App {
    @ObservedObject var coordinator = Coordinator()

    var body: some Scene {
        WindowGroup {
            Group {
                if coordinator.isLoggedIn {
                    NavigationSplitView(
                        columnVisibility: $coordinator.userPreferences.columnVisibility,
                        preferredCompactColumn: $coordinator.userPreferences.preferredCompactColumn
                    ) {
                        NavigationSplitViewSidebar(viewModel: coordinator.sidebarViewModel)
                    } content: {
                        NavigationSplitViewContent(viewModel: coordinator.contentViewModel)
                    } detail: {
                        NavigationSplitViewDetail(viewModel: coordinator.detailViewModel)
                    }
                    .customTitleAppearance()
                } else {
                    LoginView(viewModel: coordinator.loginViewModel)
                }
            }
            .tint(coordinator.userPreferences.tintColor)
        }
    }
}

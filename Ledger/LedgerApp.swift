import SwiftUI

@main struct LedgerApp: App {
    @ObservedObject var coordinator = NavigationCoordinator()

    var body: some Scene {
        WindowGroup {
            Group {
                if coordinator.isLoggedIn {
                    NavigationSplitView(
//                        columnVisibility: $coordinator.userDefaultsViewModel.userDefaults.columnVisibility,
//                        preferredCompactColumn: $coordinator.userDefaultsViewModel.userDefaults.preferredCompactColumn
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
//            .tint(coordinator.userDefaultsViewModel.userDefaults.tintColor)
        }
    }
}

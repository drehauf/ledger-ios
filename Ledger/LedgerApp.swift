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
                        NavigationSplitViewSidebar(viewModel: NavigationSplitViewSidebarViewModel(coordinator: coordinator))
                    } content: {
                        NavigationSplitViewContent(viewModel: NavigationSplitViewContentViewModel(coordinator: coordinator))
                    } detail: {
                        NavigationSplitViewDetail(viewModel: NavigationSplitViewDetailViewModel(coordinator: coordinator))
                    }
                    .customTitleAppearance()
                } else {
                    LoginView(viewModel: LoginViewModel(coordinator: coordinator))
                }
            }
//            .tint(coordinator.userDefaultsViewModel.userDefaults.tintColor)
        }
    }
}

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
                        SidebarView(viewModel: SidebarViewModel(coordinator: coordinator))
                    } content: {
                        ContentView(viewModel: ContentViewModel(coordinator: coordinator))
                    } detail: {
                        DetailView(viewModel: DetailViewModel(coordinator: coordinator))
                    }
                } else {
                    LoginView(viewModel: LoginViewModel(coordinator: coordinator))
                }
            }
            .customTitleAppearance()
//            .tint(coordinator.userDefaultsViewModel.userDefaults.tintColor)
        }
    }
}

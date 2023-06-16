import SwiftUI

@main struct DashboardApp: App {
    @ObservedObject var coordinator = Coordinator(isLoggedIn: false)

    var body: some Scene {
        WindowGroup {
            if coordinator.isLoggedIn {
                CoordinatorView(coordinator: coordinator)
                    .tint(.randomAccent)
            } else {
                LoginView(viewModel: coordinator.loginViewModel)
                    .tint(.randomAccent)
            }
        }
    }
}

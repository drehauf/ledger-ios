import SwiftUI

final class SidebarViewModel: ObservableObject {
    @ObservedObject var coordinator: NavigationCoordinator

    @Published var showDefaults = false
    
    var name: String? {
        coordinator.user?.name
    }

    init(coordinator: NavigationCoordinator) {
        self.coordinator = coordinator
    }

    func onLogout() {
        coordinator.user = nil
    }

    func onShowDefaults() {
        showDefaults = true
    }
}

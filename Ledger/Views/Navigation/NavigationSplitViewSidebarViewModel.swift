import SwiftUI

final class NavigationSplitViewSidebarViewModel: ObservableObject {
    @ObservedObject var coordinator: Coordinator
    @Binding var selectedDestination: Destination?

    var name: String? {
        coordinator.user?.name
    }

    init(coordinator: Coordinator) {
        self.coordinator = coordinator
        self._selectedDestination = Binding(
            get: { coordinator.selectedDestination },
            set: { newValue in coordinator.selectedDestination = newValue }
        )
    }

    func onLogout() {
        coordinator.user = nil
    }

    func onOpenSettings() {
        coordinator.showSettings = true
    }
}

import SwiftUI

final class NavigationSplitViewSidebarViewModel: ObservableObject {
    @ObservedObject var coordinator: Coordinator
    @Binding var selectedDestination: Destination?

    init(coordinator: Coordinator) {
        self.coordinator = coordinator
        self._selectedDestination = Binding(
            get: { coordinator.selectedDestination },
            set: { newValue in coordinator.selectedDestination = newValue }
        )
    }

    func logout() {
        coordinator.user = nil
    }
}

import SwiftUI

final class NavigationSplitViewContentViewModel: ObservableObject {
    @ObservedObject var coordinator: NavigationCoordinator

    init(coordinator: NavigationCoordinator) {
        self.coordinator = coordinator
    }
}

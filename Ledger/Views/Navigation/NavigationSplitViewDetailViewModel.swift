import SwiftUI

final class NavigationSplitViewDetailViewModel: ObservableObject {
    @ObservedObject var coordinator: NavigationCoordinator

    init(coordinator: NavigationCoordinator) {
        self.coordinator = coordinator
    }
}

import SwiftUI

final class ContentViewModel: ObservableObject {
    @ObservedObject var coordinator: NavigationCoordinator

    init(coordinator: NavigationCoordinator) {
        self.coordinator = coordinator
    }
}

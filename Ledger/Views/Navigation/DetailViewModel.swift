import SwiftUI

final class DetailViewModel: ObservableObject {
    @ObservedObject var coordinator: NavigationCoordinator

    init(coordinator: NavigationCoordinator) {
        self.coordinator = coordinator
    }
}

import SwiftUI

final class NavigationSplitViewContentViewModel: ObservableObject {
    @ObservedObject var coordinator: Coordinator

    init(coordinator: Coordinator) {
        self.coordinator = coordinator
    }
}

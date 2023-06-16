import SwiftUI

final class NavigationSplitViewDetailViewModel: ObservableObject {
    @ObservedObject var coordinator: Coordinator

    init(coordinator: Coordinator) {
        self.coordinator = coordinator
    }
}

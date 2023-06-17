import SwiftUI

final class NavigationCoordinator: ObservableObject {
    @Published var user: User?
    @Published var navigationItem: NavigationItem?

    var isLoggedIn: Bool {
        user != nil
    }
}

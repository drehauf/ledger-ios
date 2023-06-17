import SwiftUI

final class NavigationCoordinator: ObservableObject {
    @Published var user: User? = nil
    @Published var navigationItem: NavigationItem?
    
    @Published var loginViewModel: LoginViewModel!
    @Published var sidebarViewModel: NavigationSplitViewSidebarViewModel!
    @Published var contentViewModel: NavigationSplitViewContentViewModel!
    @Published var detailViewModel: NavigationSplitViewDetailViewModel!

    var isLoggedIn: Bool {
        user != nil
    }

    init() {
        self.loginViewModel = LoginViewModel(coordinator: self)
        self.sidebarViewModel = NavigationSplitViewSidebarViewModel(coordinator: self)
        self.contentViewModel = NavigationSplitViewContentViewModel(coordinator: self)
        self.detailViewModel = NavigationSplitViewDetailViewModel(coordinator: self)

        self.navigationItem = .calendar
    }
}

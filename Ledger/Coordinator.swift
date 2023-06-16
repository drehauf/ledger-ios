import SwiftUI

final class Coordinator: ObservableObject {
    @Published private var calendar = Calendar()
    @Published private var offers = [Offer]()
    @Published private var invoices = [Invoice]()
    @Published private var inventories = [Inventory]()
    @Published private var members = [Member]()
    @Published private var company = Company()
    @Published private var customers = [Customer]()
    @Published private var accounts = [Account]()
    @Published private var loans = [Loan]()
    @Published private var workingHours = [WorkingHour]()
    @Published private var log = Log()

    @Published var showSettings = false

    @Published var user: User? = nil
    @Published var selectedDestination: Destination?
    
    @Published var loginViewModel: LoginViewModel!
    @Published var sidebarViewModel: NavigationSplitViewSidebarViewModel!
    @Published var contentViewModel: NavigationSplitViewContentViewModel!
    @Published var detailViewModel: NavigationSplitViewDetailViewModel!
    @Published var userDefaultsViewModel: UserDefaultsViewModel!

    var isLoggedIn: Bool {
        user != nil
    }

    init() {
        self.loginViewModel = LoginViewModel(coordinator: self)
        self.sidebarViewModel = NavigationSplitViewSidebarViewModel(coordinator: self)
        self.contentViewModel = NavigationSplitViewContentViewModel(coordinator: self)
        self.detailViewModel = NavigationSplitViewDetailViewModel(coordinator: self)
        self.userDefaultsViewModel = UserDefaultsViewModel(coordinator: self)

        self.selectedDestination = userDefaultsViewModel.userDefaults.selectedDestination
    }
}

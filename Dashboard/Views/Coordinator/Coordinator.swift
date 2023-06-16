import SwiftUI

final class Coordinator: ObservableObject {
    @Published var loginViewModel: LoginViewModel!

    @Published var isLoggedIn: Bool

    init(isLoggedIn: Bool) {
        self.isLoggedIn = isLoggedIn
        self.loginViewModel = LoginViewModel(
            coordinator: self,
            mail: "",
            password: ""
        )
    }

    func logout() {
        isLoggedIn = false
    }
}

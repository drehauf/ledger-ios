import SwiftUI

final class LoginViewModel: ObservableObject {
    private let coordinator: Coordinator

    @Published var mail: String
    @Published var password: String

    var isLoginButtonDisabled: Bool {
        mail.isEmpty || password.isEmpty
    }

    init(coordinator: Coordinator, mail: String, password: String) {
        self.coordinator = coordinator
        self.mail = mail
        self.password = password
    }

    @discardableResult func onLogin() -> KeyPress.Result {
        coordinator.isLoggedIn = true
        mail = ""
        password = ""
        return .handled
    }
}

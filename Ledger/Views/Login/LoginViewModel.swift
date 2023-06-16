import SwiftUI

final class LoginViewModel: ObservableObject {
    @ObservedObject var coordinator: Coordinator

    @Published var mail: String = ""
    @Published var password: String = ""

    var isLoginButtonDisabled: Bool {
        mail.isEmpty || password.isEmpty
    }

    init(coordinator: Coordinator) {
        self.coordinator = coordinator
    }

    @discardableResult func onLogin() -> KeyPress.Result {
        if !isLoginButtonDisabled {
            coordinator.user = User(mail: mail, password: password)
            mail = ""
            password = ""
            return .handled
        }
        return .ignored
    }
}

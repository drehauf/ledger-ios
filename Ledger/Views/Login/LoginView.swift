import SwiftUI

struct LoginView: View {
    @ObservedObject var viewModel: LoginViewModel

    var body: some View {
        VStack(spacing: Constants.spacing) {
            Image("Logo")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: Constants.logoWidth)
            VStack {
                TextField("Email", text: $viewModel.mail)
                    .textFieldStyle(.roundedBorder)
                    .textInputAutocapitalization(.never)
                SecureField("Passwort", text: $viewModel.password)
                    .textFieldStyle(.roundedBorder)
            }
            .frame(width: Constants.textFieldWidth)
            Button("Anmelden", action: { viewModel.onLogin() })
                .buttonStyle(.bordered)
                .disabled(viewModel.isLoginButtonDisabled)
        }
        .onKeyPress(.return, action: viewModel.onLogin)
    }
}

private enum Constants {
    static let spacing = 100.0
    static let logoWidth = 200.0
    static let textFieldWidth = 300.0
}

#Preview {
    LoginView(viewModel: LoginViewModel(coordinator: NavigationCoordinator()))
}

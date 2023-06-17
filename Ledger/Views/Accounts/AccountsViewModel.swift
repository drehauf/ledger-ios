import SwiftUI

final class AccountsViewModel: ObservableObject {
    @Published var accounts: [Account]
    @Published var selectedAccount: Account?

    init(accounts: [Account]) {
        self.accounts = accounts
    }
}

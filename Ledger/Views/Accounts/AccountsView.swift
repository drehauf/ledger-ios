import SwiftUI

struct AccountsView: View {
    @ObservedObject var viewModel: AccountsViewModel

    var body: some View {
        List(selection: $viewModel.selectedAccount) {
            ForEach(viewModel.accounts) { account in
                Text("\(account.id)")
            }
        }
        .navigationTitle("Jahresabschlüsse")
    }
}

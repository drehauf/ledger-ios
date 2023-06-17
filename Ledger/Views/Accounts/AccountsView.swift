import SwiftUI

struct AccountsView: View {
    @ObservedObject var viewModel: AccountsViewModel

    var body: some View {
        Text("Jahresabschlüsse")
            .navigationTitle("Jahresabschlüsse")
    }
}

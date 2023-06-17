import SwiftUI

struct InvoicesView: View {
    @ObservedObject var viewModel: InvoicesViewModel

    var body: some View {
        Text("Rechnungen")
            .navigationTitle("Rechnungen")
    }
}

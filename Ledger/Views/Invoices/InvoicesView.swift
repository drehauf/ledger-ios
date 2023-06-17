import SwiftUI

struct InvoicesView: View {
    @ObservedObject var viewModel: InvoicesViewModel

    var body: some View {
        List(selection: $viewModel.selectedInvoice) {
            ForEach(viewModel.invoices) { invoice in
                Text("\(invoice.id)")
            }
        }
        .navigationTitle("Rechnungen")
    }
}

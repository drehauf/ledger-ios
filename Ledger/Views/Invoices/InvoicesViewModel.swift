import SwiftUI

final class InvoicesViewModel: ObservableObject {
    @Published var invoices: [Invoice]
    @Published var selectedInvoice: Invoice?

    init(invoices: [Invoice]) {
        self.invoices = invoices
    }
}

import SwiftUI

final class CustomersViewModel: ObservableObject {
    @Published var customers: [Customer]
    @Published var selectedCustomer: Customer?

    init(customers: [Customer]) {
        self.customers = customers
    }
}

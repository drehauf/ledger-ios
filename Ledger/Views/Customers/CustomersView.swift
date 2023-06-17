import SwiftUI

struct CustomersView: View {
    @ObservedObject var viewModel: CustomersViewModel

    var body: some View {
        List(selection: $viewModel.selectedCustomer) {
            ForEach(viewModel.customers) { customer in
                Text("\(customer.id)")
            }
        }
        .navigationTitle("Kundschaft")
    }
}

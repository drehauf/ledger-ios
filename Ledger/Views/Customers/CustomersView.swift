import SwiftUI

struct CustomersView: View {
    @ObservedObject var viewModel: CustomersViewModel

    var body: some View {
        Text("Kundschaft")
            .navigationTitle("Kundschaft")
    }
}

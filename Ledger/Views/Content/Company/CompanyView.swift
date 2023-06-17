import SwiftUI

struct CompanyView: View {
    @ObservedObject var viewModel: CompanyViewModel

    var body: some View {
        Text(viewModel.company.name)
            .navigationTitle("Firma")
    }
}

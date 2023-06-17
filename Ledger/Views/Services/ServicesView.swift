import SwiftUI

struct ServicesView: View {
    @ObservedObject var viewModel: ServicesViewModel

    var body: some View {
        List(selection: $viewModel.selectedService) {
            ForEach(viewModel.services) { service in
                Text("\(service.id)")
            }
        }
        .navigationTitle("Dienstleistungen")
    }
}

import SwiftUI

struct ServicesView: View {
    @ObservedObject var viewModel: ServicesViewModel

    var body: some View {
        Text("Dienstleistungen")
            .navigationTitle("Dienstleistungen")
    }
}

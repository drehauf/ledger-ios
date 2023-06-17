import SwiftUI

struct OffersView: View {
    @ObservedObject var viewModel: OffersViewModel

    var body: some View {
        Text("Angebote")
            .navigationTitle("Angebote")
    }
}

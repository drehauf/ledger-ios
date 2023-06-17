import SwiftUI

struct OffersView: View {
    @ObservedObject var viewModel: OffersViewModel

    var body: some View {
        List(selection: $viewModel.selectedOffer) {
            ForEach(viewModel.offers) { offer in
                Text("\(offer.id)")
            }
        }
        .navigationTitle("Angebote")
    }
}

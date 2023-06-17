import SwiftUI

final class OffersViewModel: ObservableObject {
    @Published var offers: [Offer]
    @Published var selectedOffer: Offer?

    init(offers: [Offer]) {
        self.offers = offers
    }
}

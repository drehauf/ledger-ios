import SwiftUI

final class ServicesViewModel: ObservableObject {
    @Published var services: [Service]
    @Published var selectedService: Service?

    init(services: [Service]) {
        self.services = services
    }
}

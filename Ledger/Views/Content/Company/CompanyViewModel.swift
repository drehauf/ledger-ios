import SwiftUI

final class CompanyViewModel: ObservableObject {
    @Published var company: Company

    init(company: Company) {
        self.company = company
    }
}

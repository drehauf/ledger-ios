import SwiftUI

final class LoansViewModel: ObservableObject {
    @Published var loans: [Loan]
    @Published var selectedLoan: Loan?

    init(loans: [Loan]) {
        self.loans = loans
    }
}

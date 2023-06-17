import SwiftUI

struct LoansView: View {
    @ObservedObject var viewModel: LoansViewModel

    var body: some View {
        List(selection: $viewModel.selectedLoan) {
            ForEach(viewModel.loans) { loan in
                Text("\(loan.id)")
            }
        }
        .navigationTitle("Darlehen")
    }
}

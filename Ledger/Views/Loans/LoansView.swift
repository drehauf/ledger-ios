import SwiftUI

struct LoansView: View {
    @ObservedObject var viewModel: LoansViewModel

    var body: some View {
        Text("Darlehen")
            .navigationTitle("Darlehen")
    }
}

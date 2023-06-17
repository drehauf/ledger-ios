import SwiftUI

struct InventoriesView: View {
    @ObservedObject var viewModel: InventoriesViewModel

    var body: some View {
        Text("Inventuren")
            .navigationTitle("Inventuren")
    }
}

import SwiftUI

struct InventoriesView: View {
    @ObservedObject var viewModel: InventoriesViewModel

    var body: some View {
        List(selection: $viewModel.selectedInventory) {
            ForEach(viewModel.inventories) { inventory in
                Text("\(inventory.id)")
            }
        }
        .navigationTitle("Inventuren")
    }
}

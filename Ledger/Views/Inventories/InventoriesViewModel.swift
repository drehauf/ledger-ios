import SwiftUI

final class InventoriesViewModel: ObservableObject {
    @Published var inventories: [Inventory]
    @Published var selectedInventory: Inventory?

    init(inventories: [Inventory]) {
        self.inventories = inventories
    }
}

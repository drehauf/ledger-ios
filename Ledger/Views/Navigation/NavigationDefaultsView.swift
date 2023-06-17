import SwiftUI

struct NavigationDefaultsView: View {
    @ObservedObject var viewModel: NavigationDefaultsViewModel

    var body: some View {
        NavigationView {
            List {
                Text("Spaltendarstellung")
                Text("Spaltenverhalten")
                Text("Zu Start ausgewählte Zeile")
                Text("Accentfarbe")
            }
            .navigationTitle("Einstellungen")
        }
        .presentationDragIndicator(.visible)
    }
}


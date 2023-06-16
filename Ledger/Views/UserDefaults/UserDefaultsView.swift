import SwiftUI

struct UserDefaultsView: View {
    @ObservedObject var viewModel: UserDefaultsViewModel

    var body: some View {
        NavigationView {
            Text("Empty")
                .navigationTitle("Einstellungen")
        }
    }
}


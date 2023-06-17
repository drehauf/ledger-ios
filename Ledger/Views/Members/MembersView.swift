import SwiftUI

struct MembersView: View {
    @ObservedObject var viewModel: MembersViewModel

    var body: some View {
        Text("Gesellschaft")
            .navigationTitle("Gesellschaft")
    }
}

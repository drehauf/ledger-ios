import SwiftUI

struct DetailView: View {
    @ObservedObject var viewModel: DetailViewModel

    var body: some View {
        Text("Detail")
            .navigationTitle("Editor")
    }
}

import SwiftUI

struct NavigationSplitViewDetail: View {
    @ObservedObject var viewModel: NavigationSplitViewDetailViewModel

    var body: some View {
        Text("Detail")
            .navigationTitle("Editor")
    }
}

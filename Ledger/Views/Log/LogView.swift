import SwiftUI

struct LogView: View {
    @ObservedObject var viewModel: LogViewModel

    var body: some View {
        List(selection: $viewModel.selectedLog) {
            ForEach(viewModel.logs) { log in
                Text("\(log.id)")
            }
        }
        .navigationTitle("Logbuch")
    }
}

import SwiftUI

struct LogView: View {
    @ObservedObject var viewModel: LogViewModel

    var body: some View {
        Text("Erzeugt ein Logbuch aller Aktivitäten im DBMS")
            .navigationTitle("Logbuch")
    }
}

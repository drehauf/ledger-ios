import SwiftUI

struct CalendarDefaultsView: View {
    @ObservedObject var viewModel: CalendarDefaultsViewModel

    var body: some View {
        NavigationView {
            List {
                Text("Von")
                Text("Bis")
                Text("Nur Tage mit Ereignissen anzeigen")
            }
            .navigationTitle("Filter")
        }
        .presentationDragIndicator(.visible)
    }
}

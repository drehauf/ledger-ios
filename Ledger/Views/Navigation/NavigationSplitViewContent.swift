import SwiftUI

struct NavigationSplitViewContent: View {
    @ObservedObject var viewModel: NavigationSplitViewContentViewModel

    var body: some View {
        switch viewModel.coordinator.selectedDestination {
        case .calendar:
            CalendarView(viewModel: CalendarViewModel())
        case .offers:
            Text("Angebote")
        case .invoices:
            Text("Rechnungen")
        case .services:
            Text("Dienstleistungen")
        case .inventory:
            Text("Inventar")
        case .members:
            Text("Gesellschafter")
        case .company:
            Text("Firma")
        case .customers:
            Text("Kunden")
        case .accounts:
            Text("Jahresabschlüsse")
        case .loans:
            Text("Darlehen")
        case .workingHours:
            Text("Arbeitsstunden")
        case .log:
            Text("Logbuch")
        case nil:
            Text("Keine Auswahl")
        }
    }
}

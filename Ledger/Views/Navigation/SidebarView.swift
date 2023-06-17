import SwiftUI

struct SidebarView: View {
    @ObservedObject var viewModel: SidebarViewModel
    
    var body: some View {
        List(selection: $viewModel.coordinator.navigationItem) {
            DisclosureGroup("Tagesgeschäft") {
                NavigationLink("Kalender", value: NavigationItem.calendar)
                NavigationLink("Angebote", value: NavigationItem.offers)
                NavigationLink("Rechnungen", value: NavigationItem.invoices)
            }
            DisclosureGroup("Firma") {
                NavigationLink("Inventar", value: NavigationItem.inventories)
                NavigationLink("Gesellschaft", value: NavigationItem.members)
                NavigationLink("Firma", value: NavigationItem.company)
                NavigationLink("Kundschaft", value: NavigationItem.customers)
            }
            DisclosureGroup("Verpflichtungen") {
                NavigationLink("Jahresabschlüsse", value: NavigationItem.accounts)
                NavigationLink("Darlehen", value: NavigationItem.loans)
                NavigationLink("Arbeitsstunden", value: NavigationItem.workingHours)
                NavigationLink("Dienstleistungen", value: NavigationItem.services)
            }
            NavigationLink("Logbuch", value: NavigationItem.logs)
            Button("Abmelden", action: viewModel.onLogout)
        }
        .navigationTitle("Dreh Auf")
        .toolbar {
            Button(viewModel.name ?? "Einstellungen", action: viewModel.onShowDefaults)
        }
        .sheet(isPresented: $viewModel.showDefaults) {
            NavigationDefaultsView(viewModel: NavigationDefaultsViewModel())
        }
    }
}

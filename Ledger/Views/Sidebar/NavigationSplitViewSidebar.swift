import SwiftUI

struct NavigationSplitViewSidebar: View {
    @ObservedObject var viewModel: NavigationSplitViewSidebarViewModel
    
    var body: some View {
        List(selection: $viewModel.selectedDestination) {
            DisclosureGroup("Tagesgeschäft") {
                NavigationLink("Kalender", value: Destination.calendar)
                NavigationLink("Angebote", value: Destination.offers)
                NavigationLink("Rechnungen", value: Destination.invoices)
            }
            DisclosureGroup("Firma") {
                NavigationLink("Inventar", value: Destination.inventory)
                NavigationLink("Gesellschafter", value: Destination.members)
                NavigationLink("Firma", value: Destination.company)
                NavigationLink("Kunden", value: Destination.customers)
            }
            DisclosureGroup("Verpflichtungen") {
                NavigationLink("Jahresabschlüsse", value: Destination.accounts)
                NavigationLink("Darlehen", value: Destination.loans)
                NavigationLink("Arbeitsstunden", value: Destination.workingHours)
            }
            NavigationLink("Logbuch", value: Destination.log)
        }
        .navigationTitle("Dreh Auf")
        .navigationBarItems(trailing: Button("Abmelden", action: viewModel.logout))
    }
}
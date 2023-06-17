import SwiftUI

struct ContentView: View {
    @ObservedObject var viewModel: ContentViewModel

    var body: some View {
        switch viewModel.coordinator.navigationItem {
        case .calendar:
            CalendarView(
                viewModel: CalendarViewModel(
                    calendar: viewModel.calendar,
                    events: viewModel.events
                )
            )
        case .offers:
            OffersView(viewModel: OffersViewModel(offers: viewModel.offers))
        case .invoices:
            InvoicesView(viewModel: InvoicesViewModel(invoices: viewModel.invoices))
        case .inventories:
            InventoriesView(viewModel: InventoriesViewModel(inventories: viewModel.inventories))
        case .members:
            MembersView(viewModel: MembersViewModel(members: viewModel.members))
        case .company:
            CompanyView(viewModel: CompanyViewModel(company: viewModel.company))
        case .customers:
            CustomersView(viewModel: CustomersViewModel(customers: viewModel.customers))
        case .accounts:
            AccountsView(viewModel: AccountsViewModel(accounts: viewModel.accounts))
        case .loans:
            LoansView(viewModel: LoansViewModel(loans: viewModel.loans))
        case .workingHours:
            WorkingHoursView(viewModel: WorkingHoursViewModel(workingHours: viewModel.workingHours))
        case .services:
            ServicesView(viewModel: ServicesViewModel(services: viewModel.services))
        case .logs:
            LogView(viewModel: LogViewModel(logs: viewModel.logs))
        case nil:
            Text("Keine Auswahl")
        }
    }
}

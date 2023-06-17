import SwiftUI

struct NavigationSplitViewContent: View {
    @ObservedObject var viewModel: NavigationSplitViewContentViewModel

    var body: some View {
        switch viewModel.coordinator.navigationItem {
        case .calendar:
            CalendarView(viewModel: CalendarViewModel())
        case .offers:
            OffersView(viewModel: OffersViewModel())
        case .invoices:
            InvoicesView(viewModel: InvoicesViewModel())
        case .services:
            ServicesView(viewModel: ServicesViewModel())
        case .inventory:
            InventoriesView(viewModel: InventoriesViewModel())
        case .members:
            MembersView(viewModel: MembersViewModel())
        case .company:
            CompanyView(viewModel: CompanyViewModel())
        case .customers:
            CustomersView(viewModel: CustomersViewModel())
        case .accounts:
            AccountsView(viewModel: AccountsViewModel())
        case .loans:
            LoansView(viewModel: LoansViewModel())
        case .workingHours:
            WorkingHoursView(viewModel: WorkingHoursViewModel())
        case .log:
            LogView(viewModel: LogViewModel())
        case nil:
            Text("Keine Auswahl")
        }
    }
}

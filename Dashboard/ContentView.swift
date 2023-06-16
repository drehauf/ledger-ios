import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            List {
                DisclosureGroup("Tagesgeschäft") {
                    NavigationLink("Kalender") {
                        CalendarView()
                    }
                    NavigationLink("Angebot erstellen") {
                        CreateOfferView()
                    }
                    NavigationLink("Angebot bearbeiten") {
                        ModifyOfferView()
                    }
                    NavigationLink("Angebot duplizieren") {
                        DuplicateOfferView()
                    }
                    NavigationLink("Angebot exportieren") {
                        ExportOfferView()
                    }
                    NavigationLink("Rechnung exportieren") {
                        ExportInvoiceView()
                    }
                }
                DisclosureGroup("Inventar") {
                    NavigationLink("Inventar erstellen") {
                        CreateInventoryView()
                    }
                    NavigationLink("Inventar bearbeiten") {
                        ModifyInventoryView()
                    }
                    NavigationLink("Dienstleistung erstellen") {
                        CreateServiceView()
                    }
                    NavigationLink("Dienstleistung bearbeiten") {
                        ModifyServiceView()
                    }
                }
                DisclosureGroup("Unternehmen") {
                    NavigationLink("Gesellschafter erstellen") {
                        CreateMemberView()
                    }
                    NavigationLink("Gesellschafter bearbeiten") {
                        ModifyMemberView()
                    }
                    NavigationLink("Firma bearbeiten") {
                        ModifyCompanyView()
                    }
                    NavigationLink("Kunden erstellen") {
                        CreateCustomerView()
                    }
                    NavigationLink("Kunden bearbeiten") {
                        ModifyCustomerView()
                    }
                }
                DisclosureGroup("Anderes") {
                    NavigationLink("Jahresabschluss exportieren") {
                        ExportAnnualAccountsView()
                    }
                    NavigationLink("Darlehensrechner") {
                        LoanCalculatorView()
                    }
                    NavigationLink("Arbeitsstunden hinzufügen") {
                        CreateWorkingHoursView()
                    }
                    NavigationLink("Arbeitsstunden exportieren") {
                        ExportWorkingHoursView()
                    }
                    NavigationLink("Logbuch") {
                        LogView()
                    }
                }
            }
            .navigationTitle("Dreh Auf")
        }
        .customTitleAppearance()
    }
}

#Preview {
    ContentView()
}

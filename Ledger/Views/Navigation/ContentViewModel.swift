import SwiftUI

final class ContentViewModel: ObservableObject {
    @ObservedObject var coordinator: NavigationCoordinator

    @Published var calendar = Calendar()
    @Published var events = [CalendarEvent]()
    @Published var offers = [Offer]()
    @Published var invoices = [Invoice]()
    @Published var inventories = [Inventory]()
    @Published var members = [Member]()
    @Published var company = Company(name: "Dreh Auf")
    @Published var customers = [Customer]()
    @Published var accounts = [Account]()
    @Published var loans = [Loan]()
    @Published var workingHours = [WorkingHour]()
    @Published var services = [Service]()
    @Published var logs = [Log]()

    init(coordinator: NavigationCoordinator) {
        self.coordinator = coordinator
    }
}

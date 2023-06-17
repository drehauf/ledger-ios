import SwiftUI

final class CalendarViewModel: ObservableObject {
    @Published var calendar: Calendar
    @Published var events: [CalendarEvent]

    @Published var showDefaults = false

    init(calendar: Calendar, events: [CalendarEvent]) {
        self.calendar = calendar
        self.events = []
    }

    func formattedDate(from date: Date) -> String {
        let formatter = DateFormatter()
        formatter.dateStyle = .long
        formatter.timeStyle = .none
        return formatter.string(from: date)
    }

    func formattedWeekday(from date: Date) -> String {
        let calendar = Foundation.Calendar.current
        let weekday = calendar.component(.weekday, from: date)
        return calendar.weekdaySymbols[weekday - 1]
    }

    func formattedMonth(from month: Int) -> String {
        Foundation.Calendar.current.monthSymbols[month - 1]
    }

    func onShowDefaults() {
        showDefaults = true
    }
}

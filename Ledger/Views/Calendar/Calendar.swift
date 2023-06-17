import Foundation

struct Calendar {
    enum Stride {
        case days(ClosedRange<Int>)
        case months(ClosedRange<Int>)
        case years(ClosedRange<Int>)

        var range: ClosedRange<Int> {
            switch self {
            case .days(let range):
                range
            case .months(let range):
                (range.lowerBound * 7 * 4)...(range.upperBound * 7 * 4)
            case .years(let range):
                (range.lowerBound * 7 * 4 * 12)...(range.upperBound * 7 * 4 * 12)
            }
        }
    }

    private let calendar: Foundation.Calendar

    var dates = [Date]()
    var current: Date?
    var dict: [Int: [Date]]

    init(
        calendar: Foundation.Calendar = .autoupdatingCurrent,
        including stride: Stride? = nil
    ) {
        self.calendar = calendar
        
        self.dates = stride?.range.compactMap { value in
            calendar.date(byAdding: .day, value: value, to: .now)
        } ?? []
    
        self.current = dates.first { date in
            calendar.isDateInToday(date)
        }
        
        self.dict = Dictionary(grouping: dates) { date in
            calendar.component(.month, from: date)
        }
    }

    func component(_ component: Foundation.Calendar.Component, from date: Date) -> Int {
        calendar.component(component, from: date)
    }
}

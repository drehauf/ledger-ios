import SwiftUI

struct Calendar {}
struct Offer {}
struct Invoice {}
struct Service {}
struct Inventory {}
struct Member {}
struct Company {}
struct Customer {}
struct Account {}
struct Loan {}
struct WorkingHour {}
struct Log {}

struct User {
    let mail: String
    let password: String
}

enum Destination {
    case calendar
    case offers
    case invoices
    case services
    case inventory
    case members
    case company
    case customers
    case accounts
    case loans
    case workingHours
    case log
}

struct UserPreferences {
    var columnVisibility: NavigationSplitViewVisibility = .all
    var preferredCompactColumn: NavigationSplitViewColumn = .sidebar
    var selectedDestination: Destination? = .calendar
    var tintColor: Color = .randomAccent
}

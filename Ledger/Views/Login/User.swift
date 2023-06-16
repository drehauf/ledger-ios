import Foundation

struct User {
    let mail: String
    let password: String

    var name: String {
        mail.components(separatedBy: "@").first?.capitalized ?? mail
    }
}

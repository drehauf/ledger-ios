import SwiftUI

extension Color: CaseIterable {
    static public var allCases = [
        blue,
        brown,
        cyan,
        green,
        indigo,
        mint,
        orange,
        pink,
        purple,
        red,
        teal,
        yellow
    ]

    static let randomAccent = Self.allCases.randomElement()!
}

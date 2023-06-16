import SwiftUI

extension View {
    func customTitleAppearance() -> some View {
        onAppear {
            let appearance = UINavigationBar.appearance()
            appearance.largeTitleTextAttributes = [.font: UIFont.largeTitle]
            appearance.titleTextAttributes = [.font: UIFont.title]
        }
    }
}

extension UIFont {
    static let largeTitle = UIFont(name: "Arial Rounded MT Bold", size: 34)!
    static let title = UIFont(name: "Arial Rounded MT Bold", size: 17)!
}

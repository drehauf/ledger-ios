import SwiftUI

final class NavigationDefaultsViewModel: ObservableObject {
    @Published var userDefaults = UserDefaults()
}

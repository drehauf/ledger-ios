import SwiftUI

final class UserDefaultsViewModel: ObservableObject {
    @ObservedObject var coordinator: Coordinator
    @Published var userDefaults: UserDefaults

    init(coordinator: Coordinator) {
        self.coordinator = coordinator
        self.userDefaults = UserDefaults()
    }
}

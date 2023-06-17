import SwiftUI

final class LogViewModel: ObservableObject {
    @Published var logs: [Log]
    @Published var selectedLog: Log?

    init(logs: [Log]) {
        self.logs = logs
    }
}

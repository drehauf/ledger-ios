import SwiftUI

final class WorkingHoursViewModel: ObservableObject {
    @Published var workingHours: [WorkingHour]
    @Published var selectedWorkingHour: WorkingHour?

    init(workingHours: [WorkingHour]) {
        self.workingHours = workingHours
    }
}

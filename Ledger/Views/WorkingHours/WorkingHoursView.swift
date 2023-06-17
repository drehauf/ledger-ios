import SwiftUI

struct WorkingHoursView: View {
    @ObservedObject var viewModel: WorkingHoursViewModel
    
    var body: some View {
        List(selection: $viewModel.selectedWorkingHour) {
            ForEach(viewModel.workingHours) { workingHour in
                Text("\(workingHour.id)")
            }
        }
        .navigationTitle("Arbeitsstunden")
    }
}

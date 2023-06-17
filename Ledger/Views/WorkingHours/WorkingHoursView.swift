import SwiftUI

struct WorkingHoursView: View {
    @ObservedObject var viewModel: WorkingHoursViewModel
    
    var body: some View {
        Text("Arbeitsstunden")
            .navigationTitle("Arbeitsstunden")
    }
}

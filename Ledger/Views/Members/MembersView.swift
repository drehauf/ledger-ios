import SwiftUI

struct MembersView: View {
    @ObservedObject var viewModel: MembersViewModel
    
    var body: some View {
        List(selection: $viewModel.selectedMember) {
            ForEach(viewModel.members) { member in
                Text("\(member.id)")
            }
        }
        .navigationTitle("Gesellschaft")
    }
}

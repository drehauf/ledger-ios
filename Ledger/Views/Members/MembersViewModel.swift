import SwiftUI

final class MembersViewModel: ObservableObject {
    @Published var members: [Member]
    @Published var selectedMember: Member?

    init(members: [Member]) {
        self.members = members
    }
}

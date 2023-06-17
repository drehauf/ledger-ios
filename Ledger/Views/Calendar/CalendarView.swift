import SwiftUI

struct CalendarView: View {
    @ObservedObject var viewModel: CalendarViewModel

    var body: some View {
        ScrollViewReader { proxy in
            List(selection: $viewModel.calendar.current) {
                ForEach(Array(viewModel.calendar.dict), id: \.key) { month, dates in
                    Section(viewModel.formattedMonth(from: month)) {
                        ForEach(dates, id: \.self) { date in
                            HStack {
                                VStack(alignment: .leading) {
                                    Text(viewModel.formattedDate(from: date))
                                    Text(viewModel.formattedWeekday(from: date))
                                        .font(.caption)
                                }
                                Spacer()
                                Text("1 Event")
                            }
                            .id(date)
                        }
                    }
                }
            }
            .onAppear {
                if let id = viewModel.calendar.current {
                    proxy.scrollTo(id, anchor: .topLeading)
                }
            }
        }
        .navigationTitle("Kalender")
        .toolbar {
            Button(action: viewModel.onShowDefaults) {
                Image(systemName: "line.3.horizontal.decrease.circle")
            }
        }
        .sheet(isPresented: $viewModel.showDefaults) {
            CalendarDefaultsView(viewModel: CalendarDefaultsViewModel())
        }
    }
}

import SwiftUI

struct HomeView: View {
    // Sample utility items - can be expanded with more utilities
    let items: [HomeItem] = [
        HomeItem(icon: "plus.forwardslash.minus", title: "Calculator", destination: .calculator),
        HomeItem(icon: "note.text", title: "Notes", destination: .notes),
        HomeItem(icon: "cloud.sun", title: "Weather", destination: .weather),
        HomeItem(icon: "timer", title: "Timer", destination: .timer),
        HomeItem(icon: "gearshape", title: "Settings", destination: .settings),
        HomeItem(icon: "calendar", title: "Calendar", destination: .calendar)
    ]
    
    // Two columns layout
    let columns = [
        GridItem(.flexible()),
        GridItem(.flexible())
    ]
    
    var body: some View {
        NavigationStack {
            ScrollView {
                LazyVGrid(columns: columns, spacing: 20) {
                    ForEach(items) { item in
                        NavigationLink(destination: destinationView(for: item.destination)) {
                            HomeItemView(item: item)
                        }
                    }
                }
                .padding()
            }
            .navigationTitle("Utilities")
        }
    }
    
    /// Returns the appropriate view for each destination
    @ViewBuilder
    private func destinationView(for destination: UtilityDestination) -> some View {
        switch destination {
        case .calculator:
            CalculatorView()
        case .notes:
            NotesView()
        case .weather:
            WeatherView()
        case .timer:
            TimerView()
        case .settings:
            SettingsView()
        case .calendar:
            CalendarView()
        }
    }
}

#Preview {
    HomeView()
}

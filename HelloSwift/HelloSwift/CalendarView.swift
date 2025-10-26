import SwiftUI

struct CalendarView: View {
    var body: some View {
        VStack(spacing: 20) {
            Image(systemName: "calendar")
                .font(.system(size: 64))
                .foregroundColor(.blue)
            
            Text("Calendar")
                .font(.largeTitle)
                .fontWeight(.bold)
            
            Text("Calendar functionality will be implemented here")
                .foregroundColor(.secondary)
                .multilineTextAlignment(.center)
                .padding()
        }
        .navigationTitle("Calendar")
    }
}

#Preview {
    NavigationStack {
        CalendarView()
    }
}

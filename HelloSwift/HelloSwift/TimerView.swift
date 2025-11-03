import SwiftUI

struct TimerView: View {
    var body: some View {
        VStack(spacing: 20) {
            Image(systemName: "timer")
                .font(.system(size: 64))
                .foregroundColor(.blue)
            
            Text("Timer")
                .font(.largeTitle)
                .fontWeight(.bold)
            
            Text("Timer functionality will be implemented here")
                .foregroundColor(.secondary)
                .multilineTextAlignment(.center)
                .padding()
        }
        .navigationTitle("Timer")
    }
}

#Preview {
    NavigationStack {
        TimerView()
    }
}

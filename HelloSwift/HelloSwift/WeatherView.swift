import SwiftUI

struct WeatherView: View {
    var body: some View {
        VStack(spacing: 20) {
            Image(systemName: "cloud.sun")
                .font(.system(size: 64))
                .foregroundColor(.blue)
            
            Text("Weather")
                .font(.largeTitle)
                .fontWeight(.bold)
            
            Text("Weather functionality will be implemented here")
                .foregroundColor(.secondary)
                .multilineTextAlignment(.center)
                .padding()
        }
        .navigationTitle("Weather")
    }
}

#Preview {
    NavigationStack {
        WeatherView()
    }
}

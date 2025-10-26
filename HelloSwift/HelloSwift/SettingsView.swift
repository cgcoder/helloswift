import SwiftUI

struct SettingsView: View {
    var body: some View {
        VStack(spacing: 20) {
            Image(systemName: "gearshape")
                .font(.system(size: 64))
                .foregroundColor(.blue)
            
            Text("Settings")
                .font(.largeTitle)
                .fontWeight(.bold)
            
            Text("Settings functionality will be implemented here")
                .foregroundColor(.secondary)
                .multilineTextAlignment(.center)
                .padding()
        }
        .navigationTitle("Settings")
    }
}

#Preview {
    NavigationStack {
        SettingsView()
    }
}

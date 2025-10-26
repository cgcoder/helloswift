import SwiftUI

struct CalculatorView: View {
    var body: some View {
        VStack(spacing: 20) {
            Image(systemName: "plus.forwardslash.minus")
                .font(.system(size: 64))
                .foregroundColor(.blue)
            
            Text("Calculator")
                .font(.largeTitle)
                .fontWeight(.bold)
            
            Text("Calculator functionality will be implemented here")
                .foregroundColor(.secondary)
                .multilineTextAlignment(.center)
                .padding()
        }
        .navigationTitle("Calculator")
    }
}

#Preview {
    NavigationStack {
        CalculatorView()
    }
}

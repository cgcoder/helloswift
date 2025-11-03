import SwiftUI

struct NotesView: View {
    var body: some View {
        VStack(spacing: 20) {
            Image(systemName: "note.text")
                .font(.system(size: 64))
                .foregroundColor(.blue)
            
            Text("Notes")
                .font(.largeTitle)
                .fontWeight(.bold)
            
            Text("Notes functionality will be implemented here")
                .foregroundColor(.secondary)
                .multilineTextAlignment(.center)
                .padding()
        }
        .navigationTitle("Notes")
    }
}

#Preview {
    NavigationStack {
        NotesView()
    }
}

import SwiftUI

struct HomeItemView: View {
    let item: HomeItem
    
    var body: some View {
        VStack(spacing: 12) {
            // Icon
            Image(systemName: item.icon)
                .font(.system(size: 48))
                .foregroundColor(.blue)
                .frame(width: 80, height: 80)
                .background(Color.blue.opacity(0.1))
                .cornerRadius(16)
            
            // Text below icon
            Text(item.title)
                .font(.system(size: 16, weight: .medium))
                .foregroundColor(.primary)
                .multilineTextAlignment(.center)
        }
        .frame(maxWidth: .infinity)
        .padding(.vertical, 12)
    }
}

#Preview {
    HomeItemView(item: HomeItem(icon: "plus.forwardslash.minus", title: "Calculator", destination: .calculator))
        .frame(width: 150)
        .previewLayout(.sizeThatFits)
}

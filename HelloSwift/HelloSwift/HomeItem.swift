import SwiftUI

/// Represents a utility item on the home screen
struct HomeItem: Identifiable {
    let id = UUID()
    let icon: String
    let title: String
    let destination: UtilityDestination
}

/// Enum representing different utility screens
enum UtilityDestination {
    case calculator
    case notes
    case weather
    case timer
    case settings
    case calendar
}

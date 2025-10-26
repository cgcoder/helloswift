# Home Screen Design

## Layout Structure

The home screen uses a 2-column grid layout with the following characteristics:

### Grid Layout
- **Columns**: 2 flexible columns
- **Spacing**: 20 points between items
- **Container**: ScrollView for scrollable content

### Individual Item Design (HomeItemView)
Each utility item consists of:

1. **Icon**
   - Size: 48pt system font
   - Color: Blue
   - Background: Light blue with 10% opacity
   - Frame: 80x80 points
   - Corner Radius: 16 points

2. **Text Label**
   - Font: System, 16pt, medium weight
   - Color: Primary (adapts to light/dark mode)
   - Alignment: Center
   - Multi-line support

3. **Spacing**
   - Icon to text: 12 points
   - Vertical padding: 12 points

### Visual Mockup

```
┌─────────────────────────────────────────────┐
│              Utilities                       │
├─────────────────────────────────────────────┤
│                                             │
│  ┌───────────────┐   ┌───────────────┐    │
│  │               │   │               │    │
│  │   ╔═══════╗   │   │   ╔═══════╗   │    │
│  │   ║   ➕➗   ║   │   │   ║  📝    ║   │    │
│  │   ╚═══════╝   │   │   ╚═══════╝   │    │
│  │               │   │               │    │
│  │  Calculator   │   │     Notes     │    │
│  │               │   │               │    │
│  └───────────────┘   └───────────────┘    │
│                                             │
│  ┌───────────────┐   ┌───────────────┐    │
│  │               │   │               │    │
│  │   ╔═══════╗   │   │   ╔═══════╗   │    │
│  │   ║  ☁️☀️   ║   │   │   ║   ⏱️   ║   │    │
│  │   ╚═══════╝   │   │   ╚═══════╝   │    │
│  │               │   │               │    │
│  │   Weather     │   │     Timer     │    │
│  │               │   │               │    │
│  └───────────────┘   └───────────────┘    │
│                                             │
│  ┌───────────────┐   ┌───────────────┐    │
│  │               │   │               │    │
│  │   ╔═══════╗   │   │   ╔═══════╗   │    │
│  │   ║   ⚙️    ║   │   │   ║  📅    ║   │    │
│  │   ╚═══════╝   │   │   ╚═══════╝   │    │
│  │               │   │               │    │
│  │   Settings    │   │   Calendar    │    │
│  │               │   │               │    │
│  └───────────────┘   └───────────────┘    │
│                                             │
└─────────────────────────────────────────────┘
```

## Navigation Behavior

When a user taps on any utility item:
1. The NavigationLink triggers
2. User navigates to the corresponding utility screen
3. Each utility screen displays:
   - Large icon (64pt)
   - Title
   - Placeholder text for future functionality
   - Navigation bar with back button

## Available Utilities

1. **Calculator** - Arithmetic operations utility
2. **Notes** - Note-taking utility
3. **Weather** - Weather information utility
4. **Timer** - Timing utility
5. **Settings** - App settings utility
6. **Calendar** - Calendar and scheduling utility

## Extension Points

To add more utilities:
1. Add a new case to `UtilityDestination` enum in `HomeItem.swift`
2. Create a new View file for the utility (e.g., `NewUtilityView.swift`)
3. Add a new `HomeItem` to the `items` array in `HomeView.swift`
4. Add the new case to the switch statement in `destinationView(for:)` method

Example:
```swift
// In HomeItem.swift
enum UtilityDestination {
    // ... existing cases
    case newUtility
}

// In HomeView.swift
let items: [HomeItem] = [
    // ... existing items
    HomeItem(icon: "star.fill", title: "New Utility", destination: .newUtility)
]

// In destinationView(for:) method
case .newUtility:
    NewUtilityView()
```

# Code Architecture Overview

## Application Flow

```
┌──────────────────────────────────────────────────────────────┐
│                     HelloSwiftApp.swift                      │
│                      (@main entry point)                     │
│                                                              │
│  WindowGroup {                                               │
│      HomeView() ─────────────────────────────────────────┐  │
│  }                                                        │  │
└───────────────────────────────────────────────────────────┼──┘
                                                            │
                                                            ▼
┌──────────────────────────────────────────────────────────────┐
│                         HomeView.swift                       │
│                   (Main Grid Layout Screen)                  │
│                                                              │
│  NavigationStack {                                           │
│    ScrollView {                                              │
│      LazyVGrid(columns: 2) {                                 │
│        ForEach(items) { item in                              │
│          NavigationLink {                                    │
│            HomeItemView(item) ◄──┐                          │
│          }                        │                          │
│        }                          │                          │
│      }                            │                          │
│    }                              │                          │
│  }                                │                          │
└───────────────────────────────────┼──────────────────────────┘
                                    │
                    ┌───────────────┘
                    │
                    ▼
┌──────────────────────────────────────────────────────────────┐
│                    HomeItemView.swift                        │
│                  (Individual Item Component)                 │
│                                                              │
│  VStack {                                                    │
│    Image(systemName: icon) ◄─────┐                          │
│      .font(.system(size: 48))    │                          │
│      .frame(80x80)                │                          │
│      .background(blue 10%)        │                          │
│      .cornerRadius(16)            │                          │
│                                   │                          │
│    Text(title)                    │  Data from HomeItem     │
│      .font(16pt, medium)          │                          │
│      .center aligned              │                          │
│  }                                │                          │
└───────────────────────────────────┼──────────────────────────┘
                                    │
                                    │
                    ┌───────────────┘
                    │
                    ▼
┌──────────────────────────────────────────────────────────────┐
│                      HomeItem.swift                          │
│                    (Data Model)                              │
│                                                              │
│  struct HomeItem: Identifiable {                             │
│    let id: UUID                                              │
│    let icon: String         ← SF Symbol name                │
│    let title: String        ← Display text                  │
│    let destination: UtilityDestination                       │
│  }                                                           │
│                                                              │
│  enum UtilityDestination {                                   │
│    case calculator                                           │
│    case notes                                                │
│    case weather                                              │
│    case timer                                                │
│    case settings                                             │
│    case calendar                                             │
│  }                                                           │
└──────────────────────────────────────────────────────────────┘
                                    │
                                    │ When tapped
                                    ▼
┌──────────────────────────────────────────────────────────────┐
│                  NavigationLink triggers                     │
│            destinationView(for: destination)                 │
│                                                              │
│  @ViewBuilder                                                │
│  func destinationView(for destination: UtilityDestination)   │
│    -> some View {                                            │
│      switch destination {                                    │
│        case .calculator: CalculatorView() ──────────┐       │
│        case .notes:      NotesView()      ──────────┤       │
│        case .weather:    WeatherView()    ──────────┤       │
│        case .timer:      TimerView()      ──────────┤       │
│        case .settings:   SettingsView()   ──────────┤       │
│        case .calendar:   CalendarView()   ──────────┤       │
│      }                                               │       │
│  }                                                   │       │
└──────────────────────────────────────────────────────┼───────┘
                                                       │
                    ┌──────────────────────────────────┘
                    │
                    ▼
┌──────────────────────────────────────────────────────────────┐
│                   Utility View Screens                       │
│                                                              │
│  ┌────────────────┐  ┌────────────────┐  ┌──────────────┐  │
│  │ CalculatorView │  │   NotesView    │  │  WeatherView │  │
│  └────────────────┘  └────────────────┘  └──────────────┘  │
│                                                              │
│  ┌────────────────┐  ┌────────────────┐  ┌──────────────┐  │
│  │   TimerView    │  │  SettingsView  │  │ CalendarView │  │
│  └────────────────┘  └────────────────┘  └──────────────┘  │
│                                                              │
│  Each view shows:                                            │
│  • Large icon (64pt)                                         │
│  • Title                                                     │
│  • Placeholder text                                          │
│  • Navigation bar with back button                           │
└──────────────────────────────────────────────────────────────┘
```

## Key Design Decisions

### 1. **Grid Layout**
- Uses `LazyVGrid` for efficient rendering
- 2 flexible columns for optimal mobile viewing
- 20pt spacing between items
- Scrollable to accommodate any number of utilities

### 2. **Center Alignment**
- Icons and text both use center alignment
- `.frame(maxWidth: .infinity)` ensures consistent width
- `.multilineTextAlignment(.center)` for text wrapping

### 3. **Navigation**
- `NavigationStack` for iOS 16+ navigation
- `NavigationLink` provides tap-to-navigate functionality
- Back button automatically provided by NavigationStack

### 4. **Modularity**
- Each utility is a separate View file
- Easy to add new utilities
- Clear separation of concerns

### 5. **Styling**
- SF Symbols for icons (built-in, scalable)
- Blue accent color throughout
- Light background with rounded corners
- Responsive to dark mode

## Data Flow

```
1. App Launch
   └─> HelloSwiftApp creates WindowGroup
       └─> HomeView is displayed

2. Home Screen
   └─> items array defines available utilities
       └─> LazyVGrid renders grid
           └─> ForEach creates NavigationLink for each item
               └─> HomeItemView renders each item

3. User Interaction
   └─> User taps on item
       └─> NavigationLink activates
           └─> destinationView(for:) determines target
               └─> Appropriate utility view is pushed

4. Navigation
   └─> Utility view appears with back button
       └─> User can return to home screen
```

## File Dependencies

```
HelloSwiftApp.swift
    ↓ imports
HomeView.swift
    ↓ uses
    ├── HomeItem.swift (model)
    ├── HomeItemView.swift (component)
    └── [Utility]View.swift (destinations)
        ↓ all import
    SwiftUI (framework)
```

## Extension Pattern

To add a new utility:

```
1. HomeItem.swift
   └─> Add case to UtilityDestination enum

2. NewUtilityView.swift
   └─> Create new View struct

3. HomeView.swift
   ├─> Add HomeItem to items array
   └─> Add case to destinationView switch

4. project.pbxproj
   └─> Add file to Xcode build phases (automatic in Xcode)
```

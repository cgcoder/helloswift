# HelloSwift

A SwiftUI-based iOS application featuring a home screen with multiple micro utility programs.

## Features

- **Home Screen**: Grid layout displaying utility icons in rows of two items each
- **Center-aligned Icons**: Each utility item shows an SF Symbol icon and a title, both center-aligned
- **Navigation**: Tap any icon to navigate to the respective utility screen
- **Micro Utilities**: The app architecture supports multiple independent utility programs including:
  - Calculator
  - Notes
  - Weather
  - Timer
  - Settings
  - Calendar

## Project Structure

```
HelloSwift/
├── HelloSwift.xcodeproj/
│   └── project.pbxproj          # Xcode project configuration
└── HelloSwift/
    ├── HelloSwiftApp.swift      # Main app entry point
    ├── HomeView.swift           # Home screen with grid layout
    ├── HomeItem.swift           # Data model for utility items
    ├── HomeItemView.swift       # UI component for individual items
    ├── CalculatorView.swift     # Calculator utility screen
    ├── NotesView.swift          # Notes utility screen
    ├── WeatherView.swift        # Weather utility screen
    ├── TimerView.swift          # Timer utility screen
    ├── SettingsView.swift       # Settings utility screen
    ├── CalendarView.swift       # Calendar utility screen
    ├── Assets.xcassets/         # App assets
    └── Preview Content/         # Preview assets for SwiftUI
```

## Requirements

- iOS 16.0 or later
- Xcode 14.0 or later
- Swift 5.0 or later

## How to Build and Run

1. Open `HelloSwift.xcodeproj` in Xcode
2. Select your target device or simulator
3. Press `Cmd + R` to build and run the application

## Architecture

The application uses a modular architecture where:

- **HomeView**: Main view displaying a grid of utility items using SwiftUI's `LazyVGrid` with 2 columns
- **HomeItem**: Model representing each utility with an icon, title, and destination
- **HomeItemView**: Reusable component displaying individual utility items with icon and text
- **Utility Views**: Individual screens for each micro utility program

Each utility is a self-contained view that can be expanded with additional functionality as needed.
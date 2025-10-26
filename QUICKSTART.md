# HelloSwift - Quick Start Guide

## What is HelloSwift?

HelloSwift is a modular iOS application that serves as a container for multiple micro utility programs. Each utility is a self-contained mini-app accessible from a central home screen.

## Home Screen

The home screen displays all available utilities in a grid layout:

- **2 columns** per row
- **Center-aligned icons** with text labels below
- **Tap any icon** to navigate to that utility

## Current Utilities

### 1. Calculator
- **Icon**: Plus/Minus symbols
- **Purpose**: Arithmetic operations
- **Status**: Placeholder for future implementation

### 2. Notes
- **Icon**: Note with text
- **Purpose**: Quick note-taking
- **Status**: Placeholder for future implementation

### 3. Weather
- **Icon**: Cloud with sun
- **Purpose**: Weather information and forecasts
- **Status**: Placeholder for future implementation

### 4. Timer
- **Icon**: Timer/stopwatch
- **Purpose**: Countdown and timing functions
- **Status**: Placeholder for future implementation

### 5. Settings
- **Icon**: Gear shape
- **Purpose**: App configuration and preferences
- **Status**: Placeholder for future implementation

### 6. Calendar
- **Icon**: Calendar
- **Purpose**: Event scheduling and calendar management
- **Status**: Placeholder for future implementation

## Navigation

- **Home → Utility**: Tap any icon on the home screen
- **Utility → Home**: Use the back button in the navigation bar
- **Navigation Bar**: Shows current screen title

## For Developers

### Adding New Utilities

To add a new utility to the home screen:

1. **Define the destination** in `HomeItem.swift`:
   ```swift
   enum UtilityDestination {
       // ... existing cases
       case myNewUtility
   }
   ```

2. **Create the utility view** (e.g., `MyNewUtilityView.swift`):
   ```swift
   import SwiftUI

   struct MyNewUtilityView: View {
       var body: some View {
           VStack(spacing: 20) {
               Image(systemName: "star.fill")
                   .font(.system(size: 64))
                   .foregroundColor(.blue)
               
               Text("My New Utility")
                   .font(.largeTitle)
                   .fontWeight(.bold)
           }
           .navigationTitle("My New Utility")
       }
   }
   ```

3. **Add to home screen** in `HomeView.swift`:
   ```swift
   let items: [HomeItem] = [
       // ... existing items
       HomeItem(icon: "star.fill", title: "My Utility", destination: .myNewUtility)
   ]
   ```

4. **Add navigation case** in `HomeView.swift`:
   ```swift
   case .myNewUtility:
       MyNewUtilityView()
   ```

5. **Register in Xcode project**: Add the new Swift file to the project target

### Customizing Item Appearance

Edit `HomeItemView.swift` to customize:
- Icon size (currently 48pt)
- Icon colors (currently blue)
- Background style (currently light blue with 10% opacity)
- Corner radius (currently 16pt)
- Text styling (currently 16pt medium weight)
- Spacing between elements

## Technical Details

- **Framework**: SwiftUI
- **Minimum iOS**: 16.0
- **Layout**: LazyVGrid with 2 flexible columns
- **Navigation**: NavigationStack (iOS 16+)
- **Icons**: SF Symbols (built-in iOS icon system)

## Project Structure

```
HelloSwift/
├── HelloSwiftApp.swift      # App entry point
├── HomeView.swift           # Main grid view
├── HomeItem.swift           # Data model
├── HomeItemView.swift       # Item component
└── [Utility]View.swift      # Individual utility screens
```

## Support

For issues or questions, refer to the main README.md or DESIGN.md files in the project root.

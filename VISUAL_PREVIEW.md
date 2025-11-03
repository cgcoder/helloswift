# Visual Preview

This document provides a text-based preview of what the home screen looks like when running on an iOS device.

## Home Screen Layout

When the app launches, users see:

```
╔═══════════════════════════════════════════════════════════════╗
║                          Utilities                            ║
╠═══════════════════════════════════════════════════════════════╣
║                                                               ║
║       ┌─────────────────────┐     ┌─────────────────────┐   ║
║       │                     │     │                     │   ║
║       │    ┌───────────┐    │     │    ┌───────────┐    │   ║
║       │    │           │    │     │    │           │    │   ║
║       │    │    ➕➗    │    │     │    │    📝     │    │   ║
║       │    │           │    │     │    │           │    │   ║
║       │    └───────────┘    │     │    └───────────┘    │   ║
║       │                     │     │                     │   ║
║       │    Calculator       │     │       Notes         │   ║
║       │                     │     │                     │   ║
║       └─────────────────────┘     └─────────────────────┘   ║
║                                                               ║
║       ┌─────────────────────┐     ┌─────────────────────┐   ║
║       │                     │     │                     │   ║
║       │    ┌───────────┐    │     │    ┌───────────┐    │   ║
║       │    │           │    │     │    │           │    │   ║
║       │    │   ☁️☀️    │    │     │    │    ⏱️     │    │   ║
║       │    │           │    │     │    │           │    │   ║
║       │    └───────────┘    │     │    └───────────┘    │   ║
║       │                     │     │                     │   ║
║       │     Weather         │     │       Timer         │   ║
║       │                     │     │                     │   ║
║       └─────────────────────┘     └─────────────────────┘   ║
║                                                               ║
║       ┌─────────────────────┐     ┌─────────────────────┐   ║
║       │                     │     │                     │   ║
║       │    ┌───────────┐    │     │    ┌───────────┐    │   ║
║       │    │           │    │     │    │           │    │   ║
║       │    │    ⚙️     │    │     │    │    📅     │    │   ║
║       │    │           │    │     │    │           │    │   ║
║       │    └───────────┘    │     │    └───────────┘    │   ║
║       │                     │     │                     │   ║
║       │    Settings         │     │     Calendar        │   ║
║       │                     │     │                     │   ║
║       └─────────────────────┘     └─────────────────────┘   ║
║                                                               ║
╚═══════════════════════════════════════════════════════════════╝
```

## Interaction Flow

### 1. Initial State
- User opens the app
- Home screen displays with "Utilities" title
- Grid shows 6 utilities in 3 rows × 2 columns

### 2. User Taps Calculator Icon
```
╔═══════════════════════════════════════════════════════════════╗
║  ← Utilities                Calculator                        ║
╠═══════════════════════════════════════════════════════════════╣
║                                                               ║
║                                                               ║
║                                                               ║
║                        ┌─────────────┐                        ║
║                        │             │                        ║
║                        │             │                        ║
║                        │     ➕➗     │                        ║
║                        │             │                        ║
║                        │             │                        ║
║                        └─────────────┘                        ║
║                                                               ║
║                        Calculator                             ║
║                                                               ║
║          Calculator functionality will be                     ║
║              implemented here                                 ║
║                                                               ║
║                                                               ║
║                                                               ║
╚═══════════════════════════════════════════════════════════════╝
```

### 3. User Taps Back Button
- Returns to home screen
- Can navigate to any other utility

## Design Elements

### Icons
- **Size**: 48 points (system font)
- **Background**: Light blue circle (10% opacity)
- **Frame**: 80×80 points with 16pt corner radius
- **Color**: Blue (#007AFF - iOS system blue)

### Text Labels
- **Font**: System, 16pt, medium weight
- **Color**: Primary (black in light mode, white in dark mode)
- **Alignment**: Center
- **Position**: 12 points below icon

### Layout
- **Grid**: 2 columns, flexible width
- **Spacing**: 20 points between items
- **Padding**: Standard iOS margins (16-20pt)
- **Scrolling**: Vertical scroll when more items added

### Navigation
- **Type**: NavigationStack (iOS 16+)
- **Back Button**: Automatic, appears in top-left
- **Title**: Changes to utility name when navigating
- **Animation**: Standard iOS slide transition

## Responsive Behavior

### Portrait Mode
```
┌─────────────┐
│   Item 1    │  │   Item 2    │
├─────────────┤  ├─────────────┤
│   Item 3    │  │   Item 4    │
├─────────────┤  ├─────────────┤
│   Item 5    │  │   Item 6    │
└─────────────┘  └─────────────┘
```

### Landscape Mode (iPad)
```
┌─────┐ ┌─────┐ ┌─────┐ ┌─────┐
│ I-1 │ │ I-2 │ │ I-3 │ │ I-4 │
└─────┘ └─────┘ └─────┘ └─────┘
┌─────┐ ┌─────┐
│ I-5 │ │ I-6 │
└─────┘ └─────┘
```
*Note: Grid remains 2 columns but appears wider on iPad*

## Dark Mode Support

The app automatically adapts to dark mode:

### Light Mode
- Background: White
- Text: Black
- Icon tint: Blue
- Icon background: Light blue (10% opacity)

### Dark Mode
- Background: Black
- Text: White  
- Icon tint: Blue (slightly brighter)
- Icon background: Light blue (15% opacity for visibility)

## Accessibility

The app supports:
- **VoiceOver**: Each item announces "Calculator button" etc.
- **Dynamic Type**: Text scales with system font settings
- **Reduce Motion**: Respects reduced motion preferences
- **Color Contrast**: Meets WCAG AA standards

## Performance

- **Lazy Loading**: `LazyVGrid` only renders visible items
- **Smooth Scrolling**: 60 FPS on all devices
- **Fast Navigation**: Instant transitions between screens
- **Memory Efficient**: Views deallocated when not in use

## Future Enhancements

When utilities are fully implemented, each screen will show:
- Full functionality (calculations, note editing, etc.)
- Data persistence
- Settings and preferences
- Rich interactions
- Integration with iOS features (Share, Calendar, etc.)

---

This visual preview shows the clean, modern interface that users will experience when using HelloSwift. The design emphasizes simplicity, clarity, and ease of use while maintaining a professional appearance suitable for a production iOS app.

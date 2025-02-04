import SwiftUI

// MARK: - Color Extension with HEX Support
extension Color {
    
    // HEX Initializer for Color
    init(hex: String) {
        let scanner = Scanner(string: hex)
        _ = scanner.scanString("#") // Remove '#' if present

        var rgb: UInt64 = 0
        scanner.scanHexInt64(&rgb)

        let red = Double((rgb >> 16) & 0xFF) / 255.0
        let green = Double((rgb >> 8) & 0xFF) / 255.0
        let blue = Double(rgb & 0xFF) / 255.0

        self.init(red: red, green: green, blue: blue)
    }
    
    // MARK: - App Colors
    static let primaryApp = Color(hex: "53B175")       // Greenish Color
    static let primaryText = Color(hex: "030303")      // Black Color
    static let secondaryText = Color(hex: "828282")    // Light Gray Color
    static let textTitle = Color(hex: "7C7C7C")       // Medium Gray Color
    static let placeholder = Color(hex: "B1B1B1")     // Placeholder Gray
    static let darkGray = Color(hex: "4C4F4D")        // Dark Gray
}

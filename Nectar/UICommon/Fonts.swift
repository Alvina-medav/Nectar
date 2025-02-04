import SwiftUI

// MARK: - Gilroy Font Enum
enum Gilroy: String {
    case regular = "Gilroy-Regular"
    case medium = "Gilroy-Medium"
    case semibold = "Gilroy-SemiBold"
    case bold = "Gilroy-Bold"
}

// MARK: - Font Extension
extension Font {
    static func gilroy(_ type: Gilroy, size: CGFloat) -> Font {
        return .custom(type.rawValue, size: size)
    }
}

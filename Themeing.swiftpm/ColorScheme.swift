// © 2025  Cristian Felipe Patiño Rojas. Created on 1/6/25.

import SwiftUI

// Allows persisting to UserDefaults:
extension ColorScheme: @retroactive RawRepresentable {
    public var rawValue: String {
        switch self {
        case .light: return "light"
        case .dark: return "dark"
        default: return "unknown"
        }
    }
    
    public init?(rawValue: String) {
        switch rawValue {
        case "light": self = .light
        case "dark": self = .dark
        default: return nil
        }
    }
}

extension ColorScheme {
    var theme: Theme {
        switch self {
        case .dark: return .dark
        default: return .light
        }
    }
}

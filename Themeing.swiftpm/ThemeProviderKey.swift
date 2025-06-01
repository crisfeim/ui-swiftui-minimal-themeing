// © 2025  Cristian Felipe Patiño Rojas. Created on 1/6/25.

import SwiftUI

struct ThemeProviderKey: EnvironmentKey {
    static var defaultValue: Theme = .light
}

extension EnvironmentValues {
    var theme: Theme {
        get { self[ThemeProviderKey.self] }
        set { self[ThemeProviderKey.self] = newValue }
    }
}

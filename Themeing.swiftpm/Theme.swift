// © 2025  Cristian Felipe Patiño Rojas. Created on 1/6/25.

import SwiftUI

struct Theme: Initiable {
    var accentColor = Color.red
}

extension Theme {
    static let light = Theme()
    static let dark  = Theme { $0.accentColor = .yellow }
}

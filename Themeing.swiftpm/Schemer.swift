// © 2025  Cristian Felipe Patiño Rojas. Created on 1/6/25.
import SwiftUI

struct Schemer<Content: View>: View {
    @AppStorage("colorScheme") var scheme: ColorScheme?
    @Environment(\.colorScheme) var colorScheme
    var theme: Theme { (scheme ?? colorScheme).theme }
    var content: () -> Content
    var body: some View {
        content()
            .environment(\.theme, theme)
            .preferredColorScheme(scheme)
    }
}

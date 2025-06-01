// © 2025  Cristian Felipe Patiño Rojas. Created on 1/6/25.

protocol Initiable {
    init()
}

extension Initiable {
    init(transform: (inout Self) -> Void) {
        var copy = Self.init()
        transform(&copy)
        self = copy
    }
}

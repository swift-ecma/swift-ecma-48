extension ECMA_48.SGR.Color {

    public enum Palette: Int, Sendable, Hashable, CaseIterable {

        case black = 0
        case red = 1
        case green = 2
        case yellow = 3
        case blue = 4
        case magenta = 5
        case cyan = 6
        case white = 7

        case brightBlack = 8
        case brightRed = 9
        case brightGreen = 10
        case brightYellow = 11
        case brightBlue = 12
        case brightMagenta = 13
        case brightCyan = 14
        case brightWhite = 15
    }
}

extension ECMA_48.SGR.Color.Palette {

    public var isBright: Bool {
        rawValue >= 8
    }

    public var base: Self {
        isBright ? Self(rawValue: rawValue - 8)! : self
    }
}

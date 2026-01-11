// ===----------------------------------------------------------------------===//
//
// This source file is part of the swift-ecma-48 open source project
//
// Copyright (c) 2024 Coen ten Thije Boonkkamp and the swift-ecma-48 project authors
// Licensed under Apache License v2.0
//
// See LICENSE for license information
//
// ===----------------------------------------------------------------------===//

extension ECMA_48.SGR.Color {
    /// 4-bit color palette (16 colors).
    ///
    /// The first 8 colors use SGR codes 30-37 (foreground) and 40-47 (background).
    /// The bright variants use SGR codes 90-97 (foreground) and 100-107 (background).
    public enum Palette: Int, Sendable, Hashable, CaseIterable {
        // Standard colors (SGR 30-37 fg, 40-47 bg)
        case black = 0
        case red = 1
        case green = 2
        case yellow = 3
        case blue = 4
        case magenta = 5
        case cyan = 6
        case white = 7

        // Bright colors (SGR 90-97 fg, 100-107 bg)
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
    /// Whether this is a bright (high-intensity) color.
    public var isBright: Bool {
        rawValue >= 8
    }

    /// The base color (without bright modifier).
    public var base: Self {
        isBright ? Self(rawValue: rawValue - 8)! : self
    }
}

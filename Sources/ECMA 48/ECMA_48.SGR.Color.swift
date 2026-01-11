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

extension ECMA_48.SGR {
    /// Terminal colors in various formats.
    ///
    /// ECMA-48 and extensions define three color depths:
    /// - 4-bit palette: 16 colors (8 normal + 8 bright)
    /// - 8-bit palette: 256 colors (16 standard + 216 color cube + 24 grayscale)
    /// - 24-bit RGB: True color (16 million colors)
    public enum Color: Sendable, Hashable {
        /// 4-bit palette color (16 colors).
        case palette(Palette)

        /// 8-bit extended color (256 colors).
        /// - 0-7: Standard colors (same as Palette.black through Palette.white)
        /// - 8-15: High intensity colors (same as Palette.brightBlack through Palette.brightWhite)
        /// - 16-231: 6x6x6 color cube
        /// - 232-255: Grayscale ramp (24 shades)
        case extended(UInt8)

        /// 24-bit RGB true color.
        case rgb(r: UInt8, g: UInt8, b: UInt8)
    }
}

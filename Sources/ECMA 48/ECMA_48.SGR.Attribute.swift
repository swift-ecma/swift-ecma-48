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
    /// Text display attributes.
    ///
    /// These control how text is rendered (bold, italic, underline, etc.).
    /// Each attribute has a corresponding "off" code to disable it.
    public enum Attribute: Int, Sendable, Hashable {
        /// Reset all attributes to default (SGR 0).
        case reset = 0

        /// Bold or increased intensity (SGR 1).
        case bold = 1

        /// Faint or decreased intensity (SGR 2).
        case dim = 2

        /// Italic (SGR 3). Not widely supported.
        case italic = 3

        /// Underline (SGR 4).
        case underline = 4

        /// Slow blink (SGR 5). Less than 150 per minute.
        case blink = 5

        /// Rapid blink (SGR 6). 150+ per minute. Rarely supported.
        case rapidBlink = 6

        /// Reverse video / inverse (SGR 7). Swap foreground and background.
        case reverse = 7

        /// Hidden / conceal (SGR 8). Not widely supported.
        case hidden = 8

        /// Strikethrough / crossed-out (SGR 9).
        case strikethrough = 9

        /// Normal intensity (neither bold nor faint) (SGR 22).
        case normalIntensity = 22

        /// Not italic, not fraktur (SGR 23).
        case notItalic = 23

        /// Not underlined (SGR 24).
        case notUnderlined = 24

        /// Not blinking (SGR 25).
        case notBlinking = 25

        /// Not reversed (SGR 27).
        case notReversed = 27

        /// Reveal / not hidden (SGR 28).
        case notHidden = 28

        /// Not crossed out (SGR 29).
        case notStrikethrough = 29
    }
}

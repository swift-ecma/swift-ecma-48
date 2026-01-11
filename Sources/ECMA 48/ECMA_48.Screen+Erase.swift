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

extension ECMA_48.Screen {
    /// Erase display modes (ED).
    public enum EraseDisplay: Int, Sendable {
        /// Erase from cursor to end of screen.
        case toEnd = 0

        /// Erase from beginning of screen to cursor.
        case toBeginning = 1

        /// Erase entire screen.
        case all = 2

        /// Erase entire screen and scrollback buffer (xterm extension).
        case allAndScrollback = 3
    }

    /// Erase in display (ED).
    ///
    /// - Parameter mode: What portion of the screen to erase
    public static func erase(_ mode: EraseDisplay = .all) -> String {
        "\(ECMA_48.csi)\(mode.rawValue)J"
    }

    /// Erase line modes (EL).
    public enum EraseLine: Int, Sendable {
        /// Erase from cursor to end of line.
        case toEnd = 0

        /// Erase from beginning of line to cursor.
        case toBeginning = 1

        /// Erase entire line.
        case all = 2
    }

    /// Erase in line (EL).
    ///
    /// - Parameter mode: What portion of the line to erase
    public static func eraseLine(_ mode: EraseLine = .all) -> String {
        "\(ECMA_48.csi)\(mode.rawValue)K"
    }
}

extension ECMA_48.Screen {
    /// Scroll up n lines (SU).
    ///
    /// - Parameter n: Number of lines to scroll up
    public static func scrollUp(_ n: Int = 1) -> String {
        "\(ECMA_48.csi)\(n)S"
    }

    /// Scroll down n lines (SD).
    ///
    /// - Parameter n: Number of lines to scroll down
    public static func scrollDown(_ n: Int = 1) -> String {
        "\(ECMA_48.csi)\(n)T"
    }
}

extension ECMA_48.Screen {
    /// Enter alternate screen buffer (xterm / DEC private mode).
    ///
    /// The alternate buffer is a separate screen that doesn't affect
    /// the main scrollback. Used by full-screen applications.
    public static var alternateBufferEnter: String {
        "\(ECMA_48.csi)?1049h"
    }

    /// Leave alternate screen buffer (xterm / DEC private mode).
    ///
    /// Restores the main screen buffer.
    public static var alternateBufferLeave: String {
        "\(ECMA_48.csi)?1049l"
    }
}

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

extension ECMA_48.Cursor {
    /// Move cursor up n rows (CUU).
    ///
    /// - Parameter n: Number of rows to move up (default 1)
    public static func up(_ n: Int = 1) -> String {
        "\(ECMA_48.csi)\(n)A"
    }

    /// Move cursor down n rows (CUD).
    ///
    /// - Parameter n: Number of rows to move down (default 1)
    public static func down(_ n: Int = 1) -> String {
        "\(ECMA_48.csi)\(n)B"
    }

    /// Move cursor forward (right) n columns (CUF).
    ///
    /// - Parameter n: Number of columns to move right (default 1)
    public static func forward(_ n: Int = 1) -> String {
        "\(ECMA_48.csi)\(n)C"
    }

    /// Move cursor back (left) n columns (CUB).
    ///
    /// - Parameter n: Number of columns to move left (default 1)
    public static func back(_ n: Int = 1) -> String {
        "\(ECMA_48.csi)\(n)D"
    }

    /// Move cursor to beginning of line n lines down (CNL).
    ///
    /// - Parameter n: Number of lines down (default 1)
    public static func nextLine(_ n: Int = 1) -> String {
        "\(ECMA_48.csi)\(n)E"
    }

    /// Move cursor to beginning of line n lines up (CPL).
    ///
    /// - Parameter n: Number of lines up (default 1)
    public static func previousLine(_ n: Int = 1) -> String {
        "\(ECMA_48.csi)\(n)F"
    }

    /// Move cursor to column n (CHA).
    ///
    /// - Parameter n: Column number (1-indexed)
    public static func column(_ n: Int) -> String {
        "\(ECMA_48.csi)\(n)G"
    }

    /// Move cursor to row;column position (CUP).
    ///
    /// - Parameters:
    ///   - row: Row number (1-indexed)
    ///   - column: Column number (1-indexed)
    public static func position(row: Int, column: Int) -> String {
        "\(ECMA_48.csi)\(row);\(column)H"
    }

    /// Move cursor to home position (1,1) (CUP).
    public static var home: String {
        "\(ECMA_48.csi)H"
    }
}

extension ECMA_48.Cursor {
    /// Save cursor position (SCP / DECSC).
    public static var save: String {
        "\(ECMA_48.csi)s"
    }

    /// Restore cursor position (RCP / DECRC).
    public static var restore: String {
        "\(ECMA_48.csi)u"
    }

    /// Hide cursor (DECTCEM).
    public static var hide: String {
        "\(ECMA_48.csi)?25l"
    }

    /// Show cursor (DECTCEM).
    public static var show: String {
        "\(ECMA_48.csi)?25h"
    }
}

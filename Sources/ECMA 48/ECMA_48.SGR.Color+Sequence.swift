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
    /// The ECMA-48 escape sequence to set this as the foreground color.
    public var foreground: String {
        switch self {
        case .palette(let p):
            if p.isBright {
                // SGR 90-97 for bright foreground
                return "\(ECMA_48.csi)\(90 + p.base.rawValue)m"
            } else {
                // SGR 30-37 for normal foreground
                return "\(ECMA_48.csi)\(30 + p.rawValue)m"
            }
        case .extended(let n):
            // SGR 38;5;n for 256-color foreground
            return "\(ECMA_48.csi)38;5;\(n)m"
        case .rgb(let r, let g, let b):
            // SGR 38;2;r;g;b for 24-bit foreground
            return "\(ECMA_48.csi)38;2;\(r);\(g);\(b)m"
        }
    }

    /// The ECMA-48 escape sequence to set this as the background color.
    public var background: String {
        switch self {
        case .palette(let p):
            if p.isBright {
                // SGR 100-107 for bright background
                return "\(ECMA_48.csi)\(100 + p.base.rawValue)m"
            } else {
                // SGR 40-47 for normal background
                return "\(ECMA_48.csi)\(40 + p.rawValue)m"
            }
        case .extended(let n):
            // SGR 48;5;n for 256-color background
            return "\(ECMA_48.csi)48;5;\(n)m"
        case .rgb(let r, let g, let b):
            // SGR 48;2;r;g;b for 24-bit background
            return "\(ECMA_48.csi)48;2;\(r);\(g);\(b)m"
        }
    }
}

extension ECMA_48.SGR.Color {
    /// Reset foreground to default (SGR 39).
    public static var defaultForeground: String {
        "\(ECMA_48.csi)39m"
    }

    /// Reset background to default (SGR 49).
    public static var defaultBackground: String {
        "\(ECMA_48.csi)49m"
    }
}

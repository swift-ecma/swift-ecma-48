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

extension ECMA_48.SGR.Attribute {
    /// The ECMA-48 escape sequence for this attribute.
    ///
    /// Format: CSI n m (e.g., "\u{001B}[1m" for bold)
    public var sequence: String {
        "\(ECMA_48.csi)\(rawValue)m"
    }
}

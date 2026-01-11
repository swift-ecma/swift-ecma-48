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

extension ECMA_48 {
    /// Select Graphic Rendition (SGR) parameters.
    ///
    /// SGR sequences control text appearance including:
    /// - Text attributes (bold, italic, underline, etc.)
    /// - Foreground and background colors
    ///
    /// SGR sequences have the format: CSI n m
    /// Where n is one or more semicolon-separated parameters.
    public enum SGR {}
}

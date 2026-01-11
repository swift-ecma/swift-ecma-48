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

/// ECMA-48: Control Functions for Coded Character Sets
///
/// This module implements escape sequences as specified in ECMA-48
/// (also known as ANSI X3.64 / ISO/IEC 6429).
///
/// ECMA-48 defines control functions for coded character sets, including:
/// - Select Graphic Rendition (SGR) for text styling and colors
/// - Cursor control sequences
/// - Screen control (erase, scroll)
///
/// Example usage:
/// ```swift
/// // Generate a bold red text sequence
/// let bold = ECMA_48.SGR.Attribute.bold.sequence
/// let red = ECMA_48.SGR.Color.palette(.red).foreground
/// let reset = ECMA_48.SGR.Attribute.reset.sequence
/// print("\(bold)\(red)Error!\(reset)")
/// ```
public enum ECMA_48 {
    /// Control Sequence Introducer (CSI): ESC [
    ///
    /// Most ECMA-48 control sequences begin with this two-character prefix.
    public static let csi = "\u{001B}["

    /// Operating System Command (OSC): ESC ]
    ///
    /// Used for terminal-specific extensions like window titles.
    public static let osc = "\u{001B}]"

    /// String Terminator (ST): ESC \
    ///
    /// Terminates OSC sequences.
    public static let st = "\u{001B}\\"
}

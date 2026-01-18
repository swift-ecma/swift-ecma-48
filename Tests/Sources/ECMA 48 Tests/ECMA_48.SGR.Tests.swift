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

import Testing
@testable import ECMA_48

@Suite("ECMA_48.SGR Tests")
struct SGRTests {
    @Test("Attribute sequences are correct")
    func attributeSequences() {
        #expect(ECMA_48.SGR.Attribute.reset.sequence == "\u{001B}[0m")
        #expect(ECMA_48.SGR.Attribute.bold.sequence == "\u{001B}[1m")
        #expect(ECMA_48.SGR.Attribute.dim.sequence == "\u{001B}[2m")
        #expect(ECMA_48.SGR.Attribute.italic.sequence == "\u{001B}[3m")
        #expect(ECMA_48.SGR.Attribute.underline.sequence == "\u{001B}[4m")
    }

    @Test("Palette foreground colors are correct")
    func paletteForegroundColors() {
        #expect(ECMA_48.SGR.Color.palette(.red).foreground == "\u{001B}[31m")
        #expect(ECMA_48.SGR.Color.palette(.green).foreground == "\u{001B}[32m")
        #expect(ECMA_48.SGR.Color.palette(.blue).foreground == "\u{001B}[34m")
        #expect(ECMA_48.SGR.Color.palette(.brightRed).foreground == "\u{001B}[91m")
    }

    @Test("Palette background colors are correct")
    func paletteBackgroundColors() {
        #expect(ECMA_48.SGR.Color.palette(.red).background == "\u{001B}[41m")
        #expect(ECMA_48.SGR.Color.palette(.brightRed).background == "\u{001B}[101m")
    }

    @Test("Extended 256-color sequences are correct")
    func extendedColors() {
        #expect(ECMA_48.SGR.Color.extended(196).foreground == "\u{001B}[38;5;196m")
        #expect(ECMA_48.SGR.Color.extended(196).background == "\u{001B}[48;5;196m")
    }

    @Test("RGB true color sequences are correct")
    func rgbColors() {
        #expect(ECMA_48.SGR.Color.rgb(r: 255, g: 128, b: 0).foreground == "\u{001B}[38;2;255;128;0m")
        #expect(ECMA_48.SGR.Color.rgb(r: 255, g: 128, b: 0).background == "\u{001B}[48;2;255;128;0m")
    }
}

@Suite("ECMA_48.Cursor Tests")
struct CursorTests {
    @Test("Movement sequences are correct")
    func movementSequences() {
        #expect(ECMA_48.Cursor.up(5) == "\u{001B}[5A")
        #expect(ECMA_48.Cursor.down(3) == "\u{001B}[3B")
        #expect(ECMA_48.Cursor.forward(2) == "\u{001B}[2C")
        #expect(ECMA_48.Cursor.back(4) == "\u{001B}[4D")
    }

    @Test("Position sequence is correct")
    func positionSequence() {
        #expect(ECMA_48.Cursor.position(row: 10, column: 20) == "\u{001B}[10;20H")
        #expect(ECMA_48.Cursor.home == "\u{001B}[H")
    }

    @Test("Visibility sequences are correct")
    func visibilitySequences() {
        #expect(ECMA_48.Cursor.hide == "\u{001B}[?25l")
        #expect(ECMA_48.Cursor.show == "\u{001B}[?25h")
    }
}

@Suite("ECMA_48.Screen Tests")
struct ScreenTests {
    @Test("Erase sequences are correct")
    func eraseSequences() {
        #expect(ECMA_48.Screen.erase(.all) == "\u{001B}[2J")
        #expect(ECMA_48.Screen.erase(.toEnd) == "\u{001B}[0J")
        #expect(ECMA_48.Screen.eraseLine(.all) == "\u{001B}[2K")
    }

    @Test("Alternate buffer sequences are correct")
    func alternateBufferSequences() {
        #expect(ECMA_48.Screen.alternateBufferEnter == "\u{001B}[?1049h")
        #expect(ECMA_48.Screen.alternateBufferLeave == "\u{001B}[?1049l")
    }
}

import Testing

@testable import ECMA_48

extension ECMA_48.SGR {
    @Suite struct `SGR Tests` {
        @Suite struct Unit {
            @Test func `attribute sequences are correct`() {
                #expect(ECMA_48.SGR.Attribute.reset.sequence == "\u{001B}[0m")
                #expect(ECMA_48.SGR.Attribute.bold.sequence == "\u{001B}[1m")
                #expect(ECMA_48.SGR.Attribute.dim.sequence == "\u{001B}[2m")
                #expect(ECMA_48.SGR.Attribute.italic.sequence == "\u{001B}[3m")
                #expect(ECMA_48.SGR.Attribute.underline.sequence == "\u{001B}[4m")
            }

            @Test func `palette foreground colors are correct`() {
                #expect(ECMA_48.SGR.Color.palette(.red).foreground == "\u{001B}[31m")
                #expect(ECMA_48.SGR.Color.palette(.green).foreground == "\u{001B}[32m")
                #expect(ECMA_48.SGR.Color.palette(.blue).foreground == "\u{001B}[34m")
                #expect(ECMA_48.SGR.Color.palette(.brightRed).foreground == "\u{001B}[91m")
            }

            @Test func `palette background colors are correct`() {
                #expect(ECMA_48.SGR.Color.palette(.red).background == "\u{001B}[41m")
                #expect(ECMA_48.SGR.Color.palette(.brightRed).background == "\u{001B}[101m")
            }

            @Test func `extended 256-color sequences are correct`() {
                #expect(ECMA_48.SGR.Color.extended(196).foreground == "\u{001B}[38;5;196m")
                #expect(ECMA_48.SGR.Color.extended(196).background == "\u{001B}[48;5;196m")
            }

            @Test func `rgb true color sequences are correct`() {
                #expect(
                    ECMA_48.SGR.Color.rgb(r: 255, g: 128, b: 0).foreground
                        == "\u{001B}[38;2;255;128;0m"
                )
                #expect(
                    ECMA_48.SGR.Color.rgb(r: 255, g: 128, b: 0).background
                        == "\u{001B}[48;2;255;128;0m"
                )
            }
        }
    }
}

extension ECMA_48.Cursor {
    @Suite struct `Cursor Tests` {
        @Suite struct Unit {
            @Test func `movement sequences are correct`() {
                #expect(ECMA_48.Cursor.up(5) == "\u{001B}[5A")
                #expect(ECMA_48.Cursor.down(3) == "\u{001B}[3B")
                #expect(ECMA_48.Cursor.forward(2) == "\u{001B}[2C")
                #expect(ECMA_48.Cursor.back(4) == "\u{001B}[4D")
            }

            @Test func `position sequence is correct`() {
                #expect(ECMA_48.Cursor.position(row: 10, column: 20) == "\u{001B}[10;20H")
                #expect(ECMA_48.Cursor.home == "\u{001B}[H")
            }

            @Test func `visibility sequences are correct`() {
                #expect(ECMA_48.Cursor.hide == "\u{001B}[?25l")
                #expect(ECMA_48.Cursor.show == "\u{001B}[?25h")
            }
        }
    }
}

extension ECMA_48.Screen {
    @Suite struct `Screen Tests` {
        @Suite struct Unit {
            @Test func `erase sequences are correct`() {
                #expect(ECMA_48.Screen.erase(.all) == "\u{001B}[2J")
                #expect(ECMA_48.Screen.erase(.toEnd) == "\u{001B}[0J")
                #expect(ECMA_48.Screen.eraseLine(.all) == "\u{001B}[2K")
            }

            @Test func `alternate buffer sequences are correct`() {
                #expect(ECMA_48.Screen.alternateBufferEnter == "\u{001B}[?1049h")
                #expect(ECMA_48.Screen.alternateBufferLeave == "\u{001B}[?1049l")
            }
        }
    }
}

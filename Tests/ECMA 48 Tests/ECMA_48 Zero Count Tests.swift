import Testing

@testable import ECMA_48

@Suite
struct `Zero counts` {
    @Test
    func `a relative move or scroll by zero emits nothing`() {
        #expect(ECMA_48.Cursor.up(0) == "")
        #expect(ECMA_48.Cursor.down(0) == "")
        #expect(ECMA_48.Cursor.forward(0) == "")
        #expect(ECMA_48.Cursor.back(0) == "")
        #expect(ECMA_48.Cursor.nextLine(0) == "")
        #expect(ECMA_48.Cursor.previousLine(0) == "")
        #expect(ECMA_48.Screen.scrollUp(0) == "")
        #expect(ECMA_48.Screen.scrollDown(0) == "")
    }

    @Test
    func `a relative move by one still emits its sequence`() {
        #expect(ECMA_48.Cursor.up(1) == "\(ECMA_48.csi)1A")
        #expect(ECMA_48.Screen.scrollDown(2) == "\(ECMA_48.csi)2T")
    }
}

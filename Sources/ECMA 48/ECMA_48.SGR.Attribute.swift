extension ECMA_48.SGR {

    public enum Attribute: Int, Sendable, Hashable {

        case reset = 0

        case bold = 1

        case dim = 2

        case italic = 3

        case underline = 4

        case blink = 5

        case rapidBlink = 6

        case reverse = 7

        case hidden = 8

        case strikethrough = 9

        case normalIntensity = 22

        case notItalic = 23

        case notUnderlined = 24

        case notBlinking = 25

        case notReversed = 27

        case notHidden = 28

        case notStrikethrough = 29
    }
}

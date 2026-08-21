extension ECMA_48.SGR {

    public enum Color: Sendable, Hashable {

        case palette(Palette)

        case extended(UInt8)

        case rgb(r: UInt8, g: UInt8, b: UInt8)
    }
}

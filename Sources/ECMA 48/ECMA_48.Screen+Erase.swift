extension ECMA_48.Screen {

    public enum EraseDisplay: Int, Sendable {

        case toEnd = 0

        case toBeginning = 1

        case all = 2

        case allAndScrollback = 3
    }

    public static func erase(_ mode: EraseDisplay = .all) -> String {
        "\(ECMA_48.csi)\(mode.rawValue)J"
    }

    public enum EraseLine: Int, Sendable {

        case toEnd = 0

        case toBeginning = 1

        case all = 2
    }

    public static func eraseLine(_ mode: EraseLine = .all) -> String {
        "\(ECMA_48.csi)\(mode.rawValue)K"
    }
}

extension ECMA_48.Screen {

    public static func scrollUp(_ n: Int = 1) -> String {
        "\(ECMA_48.csi)\(n)S"
    }

    public static func scrollDown(_ n: Int = 1) -> String {
        "\(ECMA_48.csi)\(n)T"
    }
}

extension ECMA_48.Screen {

    public static var alternateBufferEnter: String {
        "\(ECMA_48.csi)?1049h"
    }

    public static var alternateBufferLeave: String {
        "\(ECMA_48.csi)?1049l"
    }
}

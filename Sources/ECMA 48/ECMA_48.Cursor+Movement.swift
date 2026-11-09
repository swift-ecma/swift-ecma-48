extension ECMA_48.Cursor {

    public static func up(_ n: UInt = 1) -> String {
        n == 0 ? "" : "\(ECMA_48.csi)\(n)A"
    }

    public static func down(_ n: UInt = 1) -> String {
        n == 0 ? "" : "\(ECMA_48.csi)\(n)B"
    }

    public static func forward(_ n: UInt = 1) -> String {
        n == 0 ? "" : "\(ECMA_48.csi)\(n)C"
    }

    public static func back(_ n: UInt = 1) -> String {
        n == 0 ? "" : "\(ECMA_48.csi)\(n)D"
    }

    public static func nextLine(_ n: UInt = 1) -> String {
        n == 0 ? "" : "\(ECMA_48.csi)\(n)E"
    }

    public static func previousLine(_ n: UInt = 1) -> String {
        n == 0 ? "" : "\(ECMA_48.csi)\(n)F"
    }

    public static func column(_ n: UInt) -> String {
        "\(ECMA_48.csi)\(n)G"
    }

    public static func position(row: UInt, column: UInt) -> String {
        "\(ECMA_48.csi)\(row);\(column)H"
    }

    public static var home: String {
        "\(ECMA_48.csi)H"
    }
}

extension ECMA_48.Cursor {

    public static var save: String {
        "\(ECMA_48.csi)s"
    }

    public static var restore: String {
        "\(ECMA_48.csi)u"
    }

    public static var hide: String {
        "\(ECMA_48.csi)?25l"
    }

    public static var show: String {
        "\(ECMA_48.csi)?25h"
    }
}

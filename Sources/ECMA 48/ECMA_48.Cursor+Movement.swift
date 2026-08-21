extension ECMA_48.Cursor {

    public static func up(_ n: Int = 1) -> String {
        "\(ECMA_48.csi)\(n)A"
    }

    public static func down(_ n: Int = 1) -> String {
        "\(ECMA_48.csi)\(n)B"
    }

    public static func forward(_ n: Int = 1) -> String {
        "\(ECMA_48.csi)\(n)C"
    }

    public static func back(_ n: Int = 1) -> String {
        "\(ECMA_48.csi)\(n)D"
    }

    public static func nextLine(_ n: Int = 1) -> String {
        "\(ECMA_48.csi)\(n)E"
    }

    public static func previousLine(_ n: Int = 1) -> String {
        "\(ECMA_48.csi)\(n)F"
    }

    public static func column(_ n: Int) -> String {
        "\(ECMA_48.csi)\(n)G"
    }

    public static func position(row: Int, column: Int) -> String {
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

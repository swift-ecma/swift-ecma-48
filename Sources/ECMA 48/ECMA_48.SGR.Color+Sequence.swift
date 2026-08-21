extension ECMA_48.SGR.Color {

    public var foreground: String {
        switch self {
        case .palette(let p):
            if p.isBright {

                return "\(ECMA_48.csi)\(90 + p.base.rawValue)m"
            } else {

                return "\(ECMA_48.csi)\(30 + p.rawValue)m"
            }

        case .extended(let n):

            return "\(ECMA_48.csi)38;5;\(n)m"

        case .rgb(let r, let g, let b):

            return "\(ECMA_48.csi)38;2;\(r);\(g);\(b)m"
        }
    }

    public var background: String {
        switch self {
        case .palette(let p):
            if p.isBright {

                return "\(ECMA_48.csi)\(100 + p.base.rawValue)m"
            } else {

                return "\(ECMA_48.csi)\(40 + p.rawValue)m"
            }

        case .extended(let n):

            return "\(ECMA_48.csi)48;5;\(n)m"

        case .rgb(let r, let g, let b):

            return "\(ECMA_48.csi)48;2;\(r);\(g);\(b)m"
        }
    }
}

extension ECMA_48.SGR.Color {

    public static var defaultForeground: String {
        "\(ECMA_48.csi)39m"
    }

    public static var defaultBackground: String {
        "\(ECMA_48.csi)49m"
    }
}

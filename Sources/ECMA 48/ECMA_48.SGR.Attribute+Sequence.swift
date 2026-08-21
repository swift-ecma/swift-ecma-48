extension ECMA_48.SGR.Attribute {

    public var sequence: String {
        "\(ECMA_48.csi)\(rawValue)m"
    }
}

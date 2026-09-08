public import Terminal

extension Terminal.Mode {

    public enum Screen {}
}

extension Terminal.Mode.Screen {

    public static let enable: Swift.String = ECMA_48.Screen.alternateBufferEnter

    public static let disable: Swift.String = ECMA_48.Screen.alternateBufferLeave
}

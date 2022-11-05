public class TCHNullInputController: TCHInputController {
    public var keysDown: Set<TCHKeyboardControl> = []
    
    public init() {
        // Do nothing, but we must have an explicit public initializer
    }
    
    public func processKeyEvent(_ key: TCHKeyboardControl, state: TCHInputState) {
        // Do nothing
    }
}

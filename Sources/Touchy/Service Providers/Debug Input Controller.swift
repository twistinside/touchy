public class TCHDebugInputController: TCHInputController {
    public var keysDown: Set<TCHKeyboardControl> {
        backingInputController.keysDown
    }
    
    let backingInputController = TCHStandardInputController()
    
    public init() {
        // Do nothing, but we must have an explicit public initializer
    }
    
    public func processKeyEvent(_ key: TCHKeyboardControl, state: TCHInputState) {
        print("Key input received \(key)")
        print("Key is in \(state)")
        backingInputController.processKeyEvent(key, state: state)
    }
}

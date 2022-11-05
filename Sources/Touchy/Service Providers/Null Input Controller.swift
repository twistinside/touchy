public class TCHNullInputController: TCHInputController {
    public var keysDown: Set<TCHKeyboardControl> = []
    
    public func processKeyEvent(_ key: TCHKeyboardControl, state: TCHInputState) {
        // Do nothing
    }
}

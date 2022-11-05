public class TCHStandardInputController: TCHInputController {
    public var keysDown: Set<TCHKeyboardControl> = []
    
    public init() {
        // Do nothing, but we must have an explicit public initializer
    }
    
    public func processKeyEvent(_ key: TCHKeyboardControl, state: TCHInputState) {
        if state == .began {
            keysDown.insert(key)
        }
        if state == .ended {
            keysDown.remove(key)
        }
    }
}

public class TCHStandardInputController: TCHInputController {
    public var keysDown: Set<TCHKeyboardControl> = []
    
    public func processKeyEvent(_ key: TCHKeyboardControl, state: TCHInputState) {
        if state == .began {
            keysDown.insert(key)
        }
        if state == .ended {
            keysDown.remove(key)
        }
    }
}

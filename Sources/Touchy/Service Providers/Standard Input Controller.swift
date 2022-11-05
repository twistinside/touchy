class TCHStandardInputController: TCHInputController {
    var keysDown: Set<TCHKeyboardControl> = []
    
    func processKeyEvent(_ key: TCHKeyboardControl, state: TCHInputState) {
        if state == .began {
            keysDown.insert(key)
        }
        if state == .ended {
            keysDown.remove(key)
        }
    }
}

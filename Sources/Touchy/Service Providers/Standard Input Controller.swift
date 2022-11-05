class TCHStandardInputController: TCHInputController {
    var keysDown: Set<KeyboardControl> = []
    
    func processKeyEvent(_ key: KeyboardControl, state: InputState) {
        if state == .began {
            keysDown.insert(key)
        }
        if state == .ended {
            keysDown.remove(key)
        }
    }
}

class NullInputController: TCHInputController {
    var keysDown: Set<KeyboardControl> = []
    
    func processKeyEvent(_ key: KeyboardControl, state: InputState) {
        // Do nothing
    }
}

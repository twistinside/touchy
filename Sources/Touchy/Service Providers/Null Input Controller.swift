class TCHNullInputController: TCHInputController {
    var keysDown: Set<TCHKeyboardControl> = []
    
    func processKeyEvent(_ key: TCHKeyboardControl, state: TCHInputState) {
        // Do nothing
    }
}

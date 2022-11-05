class TCHDebugInputController: TCHInputController {
    var keysDown: Set<TCHKeyboardControl> {
        backingInputController.keysDown
    }
    
    let backingInputController = TCHStandardInputController()
    
    func processKeyEvent(_ key: TCHKeyboardControl, state: TCHInputState) {
        print("Key input received \(key)")
        print("Key is in \(state)")
        backingInputController.processKeyEvent(key, state: state)
    }
}

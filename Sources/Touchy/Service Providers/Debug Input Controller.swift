class DebugInputController: TCHInputController {
    var keysDown: Set<KeyboardControl> {
        backingInputController.keysDown
    }
    
    let backingInputController = StandardInputController()
    
    func processKeyEvent(_ key: KeyboardControl, state: InputState) {
        print("Key input received \(key)")
        print("Key is in \(state)")
        backingInputController.processKeyEvent(key, state: state)
    }
}

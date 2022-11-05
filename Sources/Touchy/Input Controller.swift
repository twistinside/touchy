protocol TCHInputController {
    var keysDown: Set<TCHKeyboardControl> { get }
    
    func processKeyEvent(_ key: TCHKeyboardControl, state: TCHInputState)
}

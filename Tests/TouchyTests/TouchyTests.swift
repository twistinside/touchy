import XCTest
@testable import Touchy

final class TouchyTests: XCTestCase {
    let debugInputController = TCHDebugInputController()
    let nullInputController = TCHNullInputController()
    let standardInputController = TCHStandardInputController()
    
    func testSimpleDebugKeyboardInputSuccessfully() throws {
        // when
        debugInputController.processKeyEvent(KeyboardControl.w, state: InputState.began)
        
        // then
        XCTAssert(debugInputController.keysDown.contains(KeyboardControl.w))
    }
    
    func testComplexDebugKeyboardInputSuccessfully() throws {
        // when
        debugInputController.processKeyEvent(KeyboardControl.w, state: InputState.began)
        debugInputController.processKeyEvent(KeyboardControl.w, state: InputState.ended)
        debugInputController.processKeyEvent(KeyboardControl.w, state: InputState.began)
        debugInputController.processKeyEvent(KeyboardControl.w, state: InputState.ended)
        debugInputController.processKeyEvent(KeyboardControl.space, state: InputState.began)
        debugInputController.processKeyEvent(KeyboardControl.upArrow, state: InputState.began)
        debugInputController.processKeyEvent(KeyboardControl.downArrow, state: InputState.began)
        debugInputController.processKeyEvent(KeyboardControl.zero, state: InputState.began)
        debugInputController.processKeyEvent(KeyboardControl.escape, state: InputState.began)
        debugInputController.processKeyEvent(KeyboardControl.upArrow, state: InputState.ended)
        debugInputController.processKeyEvent(KeyboardControl.w, state: InputState.began)
        
        // then
        XCTAssert(debugInputController.keysDown.contains(KeyboardControl.w))
        XCTAssert(debugInputController.keysDown.contains(KeyboardControl.space))
        XCTAssert(debugInputController.keysDown.contains(KeyboardControl.downArrow))
        XCTAssert(debugInputController.keysDown.contains(KeyboardControl.zero))
        XCTAssert(debugInputController.keysDown.contains(KeyboardControl.escape))
        XCTAssert(!debugInputController.keysDown.contains(KeyboardControl.s))
    }
    
    func testSimpleKeyboardInputSuccessfully() throws {
        // when
        standardInputController.processKeyEvent(KeyboardControl.w, state: InputState.began)
        
        // then
        XCTAssert(standardInputController.keysDown.contains(KeyboardControl.w))
    }
    
    func testComplexKeyboardInputSuccessfully() throws {
        // when
        standardInputController.processKeyEvent(KeyboardControl.w, state: InputState.began)
        standardInputController.processKeyEvent(KeyboardControl.w, state: InputState.ended)
        standardInputController.processKeyEvent(KeyboardControl.w, state: InputState.began)
        standardInputController.processKeyEvent(KeyboardControl.w, state: InputState.ended)
        standardInputController.processKeyEvent(KeyboardControl.space, state: InputState.began)
        standardInputController.processKeyEvent(KeyboardControl.upArrow, state: InputState.began)
        standardInputController.processKeyEvent(KeyboardControl.downArrow, state: InputState.began)
        standardInputController.processKeyEvent(KeyboardControl.zero, state: InputState.began)
        standardInputController.processKeyEvent(KeyboardControl.escape, state: InputState.began)
        standardInputController.processKeyEvent(KeyboardControl.upArrow, state: InputState.ended)
        standardInputController.processKeyEvent(KeyboardControl.w, state: InputState.began)
        
        // then
        XCTAssert(standardInputController.keysDown.contains(KeyboardControl.w))
        XCTAssert(standardInputController.keysDown.contains(KeyboardControl.space))
        XCTAssert(standardInputController.keysDown.contains(KeyboardControl.downArrow))
        XCTAssert(standardInputController.keysDown.contains(KeyboardControl.zero))
        XCTAssert(standardInputController.keysDown.contains(KeyboardControl.escape))
        XCTAssert(!standardInputController.keysDown.contains(KeyboardControl.s))
    }
    
    func testNullKeyboardInputDoesNothing() throws {
        // when
        nullInputController.processKeyEvent(KeyboardControl.w, state: InputState.began)
        nullInputController.processKeyEvent(KeyboardControl.w, state: InputState.ended)
        nullInputController.processKeyEvent(KeyboardControl.w, state: InputState.began)
        nullInputController.processKeyEvent(KeyboardControl.w, state: InputState.ended)
        nullInputController.processKeyEvent(KeyboardControl.space, state: InputState.began)
        nullInputController.processKeyEvent(KeyboardControl.upArrow, state: InputState.began)
        nullInputController.processKeyEvent(KeyboardControl.downArrow, state: InputState.began)
        nullInputController.processKeyEvent(KeyboardControl.zero, state: InputState.began)
        nullInputController.processKeyEvent(KeyboardControl.escape, state: InputState.began)
        nullInputController.processKeyEvent(KeyboardControl.upArrow, state: InputState.ended)
        nullInputController.processKeyEvent(KeyboardControl.w, state: InputState.began)
        
        // then
        XCTAssert(!nullInputController.keysDown.contains(KeyboardControl.w))
        XCTAssert(!nullInputController.keysDown.contains(KeyboardControl.space))
        XCTAssert(!nullInputController.keysDown.contains(KeyboardControl.downArrow))
        XCTAssert(!nullInputController.keysDown.contains(KeyboardControl.zero))
        XCTAssert(!nullInputController.keysDown.contains(KeyboardControl.escape))
        XCTAssert(!nullInputController.keysDown.contains(KeyboardControl.s))
    }
}

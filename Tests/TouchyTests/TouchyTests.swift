import XCTest
@testable import Touchy

final class TouchyTests: XCTestCase {
    let debugInputController = TCHDebugInputController()
    let nullInputController = TCHNullInputController()
    let standardInputController = TCHStandardInputController()
    
    func testSimpleDebugKeyboardInputSuccessfully() throws {
        // when
        debugInputController.processKeyEvent(TCHKeyboardControl.w, state: TCHInputState.began)
        
        // then
        XCTAssert(debugInputController.keysDown.contains(TCHKeyboardControl.w))
    }
    
    func testComplexDebugKeyboardInputSuccessfully() throws {
        // when
        debugInputController.processKeyEvent(TCHKeyboardControl.w, state: TCHInputState.began)
        debugInputController.processKeyEvent(TCHKeyboardControl.w, state: TCHInputState.ended)
        debugInputController.processKeyEvent(TCHKeyboardControl.w, state: TCHInputState.began)
        debugInputController.processKeyEvent(TCHKeyboardControl.w, state: TCHInputState.ended)
        debugInputController.processKeyEvent(TCHKeyboardControl.space, state: TCHInputState.began)
        debugInputController.processKeyEvent(TCHKeyboardControl.upArrow, state: TCHInputState.began)
        debugInputController.processKeyEvent(TCHKeyboardControl.downArrow, state: TCHInputState.began)
        debugInputController.processKeyEvent(TCHKeyboardControl.zero, state: TCHInputState.began)
        debugInputController.processKeyEvent(TCHKeyboardControl.escape, state: TCHInputState.began)
        debugInputController.processKeyEvent(TCHKeyboardControl.upArrow, state: TCHInputState.ended)
        debugInputController.processKeyEvent(TCHKeyboardControl.w, state: TCHInputState.began)
        
        // then
        XCTAssert(debugInputController.keysDown.contains(TCHKeyboardControl.w))
        XCTAssert(debugInputController.keysDown.contains(TCHKeyboardControl.space))
        XCTAssert(debugInputController.keysDown.contains(TCHKeyboardControl.downArrow))
        XCTAssert(debugInputController.keysDown.contains(TCHKeyboardControl.zero))
        XCTAssert(debugInputController.keysDown.contains(TCHKeyboardControl.escape))
        XCTAssert(!debugInputController.keysDown.contains(TCHKeyboardControl.s))
    }
    
    func testSimpleKeyboardInputSuccessfully() throws {
        // when
        standardInputController.processKeyEvent(TCHKeyboardControl.w, state: TCHInputState.began)
        
        // then
        XCTAssert(standardInputController.keysDown.contains(TCHKeyboardControl.w))
    }
    
    func testComplexKeyboardInputSuccessfully() throws {
        // when
        standardInputController.processKeyEvent(TCHKeyboardControl.w, state: TCHInputState.began)
        standardInputController.processKeyEvent(TCHKeyboardControl.w, state: TCHInputState.ended)
        standardInputController.processKeyEvent(TCHKeyboardControl.w, state: TCHInputState.began)
        standardInputController.processKeyEvent(TCHKeyboardControl.w, state: TCHInputState.ended)
        standardInputController.processKeyEvent(TCHKeyboardControl.space, state: TCHInputState.began)
        standardInputController.processKeyEvent(TCHKeyboardControl.upArrow, state: TCHInputState.began)
        standardInputController.processKeyEvent(TCHKeyboardControl.downArrow, state: TCHInputState.began)
        standardInputController.processKeyEvent(TCHKeyboardControl.zero, state: TCHInputState.began)
        standardInputController.processKeyEvent(TCHKeyboardControl.escape, state: TCHInputState.began)
        standardInputController.processKeyEvent(TCHKeyboardControl.upArrow, state: TCHInputState.ended)
        standardInputController.processKeyEvent(TCHKeyboardControl.w, state: TCHInputState.began)
        
        // then
        XCTAssert(standardInputController.keysDown.contains(TCHKeyboardControl.w))
        XCTAssert(standardInputController.keysDown.contains(TCHKeyboardControl.space))
        XCTAssert(standardInputController.keysDown.contains(TCHKeyboardControl.downArrow))
        XCTAssert(standardInputController.keysDown.contains(TCHKeyboardControl.zero))
        XCTAssert(standardInputController.keysDown.contains(TCHKeyboardControl.escape))
        XCTAssert(!standardInputController.keysDown.contains(TCHKeyboardControl.s))
    }
    
    func testNullKeyboardInputDoesNothing() throws {
        // when
        nullInputController.processKeyEvent(TCHKeyboardControl.w, state: TCHInputState.began)
        nullInputController.processKeyEvent(TCHKeyboardControl.w, state: TCHInputState.ended)
        nullInputController.processKeyEvent(TCHKeyboardControl.w, state: TCHInputState.began)
        nullInputController.processKeyEvent(TCHKeyboardControl.w, state: TCHInputState.ended)
        nullInputController.processKeyEvent(TCHKeyboardControl.space, state: TCHInputState.began)
        nullInputController.processKeyEvent(TCHKeyboardControl.upArrow, state: TCHInputState.began)
        nullInputController.processKeyEvent(TCHKeyboardControl.downArrow, state: TCHInputState.began)
        nullInputController.processKeyEvent(TCHKeyboardControl.zero, state: TCHInputState.began)
        nullInputController.processKeyEvent(TCHKeyboardControl.escape, state: TCHInputState.began)
        nullInputController.processKeyEvent(TCHKeyboardControl.upArrow, state: TCHInputState.ended)
        nullInputController.processKeyEvent(TCHKeyboardControl.w, state: TCHInputState.began)
        
        // then
        XCTAssert(!nullInputController.keysDown.contains(TCHKeyboardControl.w))
        XCTAssert(!nullInputController.keysDown.contains(TCHKeyboardControl.space))
        XCTAssert(!nullInputController.keysDown.contains(TCHKeyboardControl.downArrow))
        XCTAssert(!nullInputController.keysDown.contains(TCHKeyboardControl.zero))
        XCTAssert(!nullInputController.keysDown.contains(TCHKeyboardControl.escape))
        XCTAssert(!nullInputController.keysDown.contains(TCHKeyboardControl.s))
    }
}

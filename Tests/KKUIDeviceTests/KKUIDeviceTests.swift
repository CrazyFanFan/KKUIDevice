import XCTest
@testable import KKUIDevice

final class KKUIDeviceTests: XCTestCase {
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
        XCTAssertEqual(UIDevice.current.kk.model, "Simulator")
    }

    static var allTests = [
        ("testExample", testExample),
    ]
}

import XCTest
@testable import Veronica

final class VeronicaTests: XCTestCase {
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
        XCTAssertEqual(Veronica().text, "Hello, World!")
    }

    static var allTests = [
        ("testExample", testExample),
    ]
}

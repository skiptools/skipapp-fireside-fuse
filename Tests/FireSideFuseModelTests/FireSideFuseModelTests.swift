import XCTest
import OSLog
import Foundation
import SkipBridge
@testable import FireSideModel

let logger: Logger = Logger(subsystem: "FireSideFuseModel", category: "Tests")

@available(macOS 13, *)
final class FireSideModelTests: XCTestCase {
    override func setUp() {
        #if os(Android)
        // needed to load the compiled bridge from the transpiled tests
        loadPeerLibrary(packageName: "skipapp-fireside-fuse", moduleName: "FireSideFuseModel")
        #endif
    }

    func testFireSideModel() throws {
        logger.log("running testFireSideFuseModel")
        XCTAssertEqual(1 + 2, 3, "basic test")
    }
}

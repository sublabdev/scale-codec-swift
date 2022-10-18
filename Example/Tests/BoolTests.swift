import XCTest
@testable import ScaleCodecSwift

class BoolTests: BaseTest<Bool> {
    
    override func setUp() {
        adapter = BoolAdapter()
        optionalAdapter = OptionalBoolAdapter()
        testValues = [true, true, false, true, false]
    }
}

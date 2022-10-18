import XCTest
@testable import ScaleCodecSwift

class StringTests: BaseTest<String> {
    
    override func setUp() {
        adapter = StringAdapter(coder: coder)
        testValues = (0..<TestConstants.testingIterationsCount).map { _ in UUID().uuidString }
    }
}

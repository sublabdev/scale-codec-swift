import XCTest
@testable import ScaleCodecSwift

class DataTests: BaseTest<Data> {
    override func setUp() {
        adapter = DataAdapter(coder: coder)
        testValues = (0..<TestConstants.testingIterationsCount)
            .map { _ in UUID().uuidString.data(using: .utf8) ?? Data() }
    }
}

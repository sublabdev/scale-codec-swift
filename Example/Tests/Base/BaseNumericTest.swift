@testable import ScaleCodecSwift

// Base numeric test. All numeric tests are subclasses of this one.
class BaseNumericTest<T: Codable>: BaseTest<T> where T: FixedWidthInteger {
    override func setUp() {
        adapter = NumericAdapter()
        testValues = (0..<TestConstants.testingIterationsCount).compactMap { _ in T.random(in: T.min...T.max) }
    }
}

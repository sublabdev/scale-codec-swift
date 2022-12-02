import XCTest
@testable import ScaleCodecSwift
import CommonSwift
import BigInt

class Int256Tests: BaseTest<Int256> {
    override func setUp() {
        adapter = Int256Adapter()
        testValues = (0...TestConstants.testingIterationsCount)
            .map { _ in
                guard let data = UUID().uuidString.data(using: .utf8)?[0..<Int256.size] else { return BigInt(Data()) }
                return BigInt(data)
            }
            .map { Int256(value: $0) }
    }
}

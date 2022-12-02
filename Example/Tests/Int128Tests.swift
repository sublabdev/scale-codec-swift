import XCTest
@testable import ScaleCodecSwift
import CommonSwift
import BigInt

class Int128Tests: BaseTest<Int128> {
    override func setUp() {
        adapter = Int128Adapter()
        testValues = (0...TestConstants.testingIterationsCount)
            .map { _ in
                guard let data = UUID().uuidString.data(using: .utf8)?[0..<Int128.size] else { return BigInt(Data()) }
                return BigInt(data)
            }
            .map { Int128(value: $0) }
    }
}

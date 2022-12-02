import XCTest
@testable import ScaleCodecSwift
import CommonSwift
import BigInt

class UInt256Tests: BaseTest<UInt256> {
    override func setUp() {
        adapter = UInt256Adapter()
        testValues = (0...TestConstants.testingIterationsCount)
            .map { _ in
                guard let data = UUID().uuidString.data(using: .utf8)?[0..<UInt256.size] else { return BigUInt(Data()) }
                return BigUInt(data)
            }
            .map { UInt256(value: $0) }
    }
}

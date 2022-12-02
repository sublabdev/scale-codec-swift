import XCTest
@testable import ScaleCodecSwift
import CommonSwift
import BigInt

class UInt128Tests: BaseTest<UInt128> {
    override func setUp() {
        adapter = UInt128Adapter()
        testValues = (0...TestConstants.testingIterationsCount)
            .map { _ in
                guard let data = UUID().uuidString.data(using: .utf8)?[0..<UInt128.size] else { return BigUInt(Data()) }
                return BigUInt(data)
            }
            .map { UInt128(value: $0) }
    }
}

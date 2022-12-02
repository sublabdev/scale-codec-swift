import XCTest
@testable import ScaleCodecSwift
import CommonSwift
import BigInt

class UInt512Tests: BaseTest<UInt512> {
    override func setUp() {
        adapter = UInt512Adapter()
        testValues = (0...TestConstants.testingIterationsCount)
            .map { _ in
                guard
                    let randomData1 = UUID().uuidString.data(using: .utf8),
                    let randomData2 = UUID().uuidString.data(using: .utf8)
                else {
                    return BigUInt(Data())
                }
                
                let data = (randomData1 + randomData2)[0..<UInt512.size]
                return BigUInt(data)
            }
            .map { UInt512(value: $0) }
    }
}

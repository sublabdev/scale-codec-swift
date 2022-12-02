import XCTest
@testable import ScaleCodecSwift
import CommonSwift
import BigInt

class Int512Tests: BaseTest<Int512> {
    override func setUp() {
        adapter = Int512Adapter()
        testValues = (0...TestConstants.testingIterationsCount)
            .map { _ in
                guard
                    let randomData1 = UUID().uuidString.data(using: .utf8),
                    let randomData2 = UUID().uuidString.data(using: .utf8)
                else {
                    return BigInt(Data())
                }
                
                let data = (randomData1 + randomData2)[0..<Int512.size]
                return BigInt(data)
            }
            .map { Int512(value: $0) }
    }
}

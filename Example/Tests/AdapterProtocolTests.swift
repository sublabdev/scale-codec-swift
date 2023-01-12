import XCTest
@testable import ScaleCodecSwift

class AdapterProtocolTests: XCTestCase {
    func test() throws {
        let string = UUID().uuidString
        let stringAdapter = StringAdapter(coder: ScaleCoder.default()) as ScaleCodecAdaptable
        let data = try stringAdapter.tryWrite(value: string)
        let stringAsAny = try stringAdapter.tryRead(from: .init(data: data))
        guard let stringDecoded = stringAsAny as? String else {
            XCTFail()
            return
        }
        XCTAssertEqual(string, stringDecoded)
    }
}

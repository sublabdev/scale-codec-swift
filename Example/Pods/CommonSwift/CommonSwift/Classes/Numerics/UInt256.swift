import Foundation
import BigInt

public struct UInt256: Codable, Equatable {
    let value: BigUInt
    public static let size = 32
    
    public init(value: BigUInt) {
        self.value = value
    }
}

extension UInt256 {
    public func data() -> Data {
        value.serialize().copyOf(size: byteSize(byteSizeType: .uInt256))
    }
}

extension Data {
    public func uInt256() -> UInt256 {
        UInt256(value: BigUInt(self))
    }
}

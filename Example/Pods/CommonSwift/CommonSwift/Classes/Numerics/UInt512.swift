import Foundation
import BigInt

public struct UInt512: Codable, Equatable {
    let value: BigUInt
    public static let size = 64
    
    public init(value: BigUInt) {
        self.value = value
    }
}

extension UInt512 {
    public func data() -> Data {
        value.serialize().copyOf(size: byteSize(byteSizeType: .uInt512))
    }
}

extension Data {
    public func uInt512() -> UInt512 {
        UInt512(value: BigUInt(self))
    }
}

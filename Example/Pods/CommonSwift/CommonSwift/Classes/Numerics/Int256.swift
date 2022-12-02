import Foundation
import BigInt

public struct Int256: Codable, Equatable {
    let value: BigInt
    public static let size = 32
    
    public init(value: BigInt) {
        self.value = value
    }
}

extension Int256 {
    public func data() -> Data {
        value.serialize().copyOf(size: byteSize(byteSizeType: .int256))
    }
}

extension Data {
    public func int256() -> Int256 {
        Int256(value: BigInt(self))
    }
}

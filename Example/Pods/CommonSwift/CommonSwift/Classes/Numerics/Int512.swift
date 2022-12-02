import Foundation
import BigInt

public struct Int512: Codable, Equatable {
    let value: BigInt
    public static let size = 64
    
    public init(value: BigInt) {
        self.value = value
    }
}

extension Int512 {
    public func data() -> Data {
        value.serialize().copyOf(size: byteSize(byteSizeType: .int512))
    }
}

extension Data {
    public func int512() -> Int512 {
        Int512(value: BigInt(self))
    }
}

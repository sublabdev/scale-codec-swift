import Foundation
import BigInt

/// `UInt256` wrapper over `BigInt`
public struct UInt256: Codable, Equatable {
    let value: BigUInt
    public static let size = 32
    
    /// Creates `UInt256` wrapper over `BigInt`
    /// - Parameters:
    ///     - value: Value of type `BigInt`
    public init(value: BigUInt) {
        self.value = value
    }
    
    /// Creates `UInt256` wrapper over `BigInt` using `String`. This initializer can fail.
    /// - Parameters:
    ///     - string: A `String` value
    public init?(_ string: String) {
        guard let value = BigUInt(string) else { return nil }
        self.value = value
    }
    
    /// Creates `UInt256` wrapper over BigInt using `UInt64`
    /// - Parameters:
    ///     - string: An `UInt64` value
    public init(_ integer: UInt64) {
        value = BigUInt(integerLiteral: integer)
    }
}

extension UInt256 {
    /// Converts `UInt256` into `Data`
    /// - Returns: `Data` from `UInt256`'s value
    public func data() -> Data {
        let data = value.serialize()
        let exportSize = min(data.count, byteSize(byteSizeType: .uInt256))
        return data.copyOf(size: exportSize).reversed().toData()
    }
}

extension Data {
    /// Generates `UInt256` from `Data`
    /// - Returns: `UInt256` from `Data`
    public func uInt256() -> UInt256 {
        UInt256(value: BigUInt(reversed().toData()))
    }
}

extension String {
    /// Generates `UInt256` from `String`
    /// - Returns: `UInt256` from `String`
    public func uInt256() -> UInt256? {
        UInt256(self)
    }
}

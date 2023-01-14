import Foundation

// MARK: - Array95 + Encodable

/// An array with 95 elements
@propertyWrapper public struct Array95<Element> {
    public var wrappedValue: [Element]
    public init(wrappedValue: [Element]) {
        self.wrappedValue = wrappedValue
    }
}

// MARK: - Array95 + Encodable

extension Array95: Encodable where Element : Encodable {
    /// Encodes the array via provided encoder
    /// - Parameters:
    ///     - encoder: An encoder that is used to encode the array
    public func encode(to encoder: Encoder) throws {
        guard wrappedValue.count == 95 else { throw FixedArrayError.invalidSize }
        var container = encoder.unkeyedContainer()
        try wrappedValue.forEach { try container.encode($0) }
    }
}

// MARK: - Array95 + Decodable

extension Array95: Decodable where Element : Decodable {
    /// Creates a fixed array with 95 elements using the provided decoder, by decoding its each element
    /// - Parameters:
    ///     - decoder: Decoder, used to create the array
    public init(from decoder: Decoder) throws {
        var container = try decoder.unkeyedContainer()
        wrappedValue = try (0..<95).map { _ in try container.decode(Element.self) }
    }
}

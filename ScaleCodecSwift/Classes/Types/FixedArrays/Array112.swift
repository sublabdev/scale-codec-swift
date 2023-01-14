import Foundation

// MARK: - Array112 + Encodable

/// An array with 112 elements
@propertyWrapper public struct Array112<Element> {
    public var wrappedValue: [Element]
    public init(wrappedValue: [Element]) {
        self.wrappedValue = wrappedValue
    }
}

// MARK: - Array112 + Encodable

extension Array112: Encodable where Element : Encodable {
    // Encodes the array via provided encoder
    /// - Parameters:
    ///     - encoder: An encoder that is used to encode the array
    public func encode(to encoder: Encoder) throws {
        guard wrappedValue.count == 112 else { throw FixedArrayError.invalidSize }
        var container = encoder.unkeyedContainer()
        try wrappedValue.forEach { try container.encode($0) }
    }
}

// MARK: - Array112 + Decodable

extension Array112: Decodable where Element : Decodable {
    /// Creates a fixed array with 112 elements using the provided decoder, by decoding its each element
    /// - Parameters:
    ///     - decoder: Decoder, used to create the array
    public init(from decoder: Decoder) throws {
        var container = try decoder.unkeyedContainer()
        wrappedValue = try (0..<112).map { _ in try container.decode(Element.self) }
    }
}

import Foundation

// MARK: - Array110 + Encodable

/// An array with 110 elements
@propertyWrapper public struct Array110<Element> {
    public var wrappedValue: [Element]
    public init(wrappedValue: [Element]) {
        self.wrappedValue = wrappedValue
    }
}

// MARK: - Array110 + Encodable

extension Array110: Encodable where Element : Encodable {
    // Encodes the array via provided encoder
    /// - Parameters:
    ///     - encoder: An encoder that is used to encode the array
    public func encode(to encoder: Encoder) throws {
        guard wrappedValue.count == 110 else { throw FixedArrayError.invalidSize }
        var container = encoder.unkeyedContainer()
        try wrappedValue.forEach { try container.encode($0) }
    }
}

// MARK: - Array110 + Decodable

extension Array110: Decodable where Element : Decodable {
    /// Creates a fixed array with 110 elements using the provided decoder, by decoding its each element
    /// - Parameters:
    ///     - decoder: Decoder, used to create the array
    public init(from decoder: Decoder) throws {
        var container = try decoder.unkeyedContainer()
        wrappedValue = try (0..<110).map { _ in try container.decode(Element.self) }
    }
}

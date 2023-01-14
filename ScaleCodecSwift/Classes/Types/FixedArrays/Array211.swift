import Foundation

// MARK: - Array211 + Encodable

/// An array with 211 elements
@propertyWrapper public struct Array211<Element> {
    public var wrappedValue: [Element]
    public init(wrappedValue: [Element]) {
        self.wrappedValue = wrappedValue
    }
}

// MARK: - Array211 + Encodable

extension Array211: Encodable where Element : Encodable {
    // Encodes the array via provided encoder
    /// - Parameters:
    ///     - encoder: An encoder that is used to encode the array
    public func encode(to encoder: Encoder) throws {
        guard wrappedValue.count == 211 else { throw FixedArrayError.invalidSize }
        var container = encoder.unkeyedContainer()
        try wrappedValue.forEach { try container.encode($0) }
    }
}

// MARK: - Array211 + Decodable

extension Array211: Decodable where Element : Decodable {
    /// Creates a fixed array with 211 elements using the provided decoder, by decoding its each element
    /// - Parameters:
    ///     - decoder: Decoder, used to create the array
    public init(from decoder: Decoder) throws {
        var container = try decoder.unkeyedContainer()
        wrappedValue = try (0..<211).map { _ in try container.decode(Element.self) }
    }
}

import Foundation

// MARK: - Array195 + Encodable

/// An array with 195 elements
@propertyWrapper public struct Array195<Element> {
    public var wrappedValue: [Element]
    public init(wrappedValue: [Element]) {
        self.wrappedValue = wrappedValue
    }
}

// MARK: - Array195 + Encodable

extension Array195: Encodable where Element : Encodable {
    /// Encodes the array via provided encoder
    /// - Parameters:
    ///     - encoder: An encoder that is used to encode the array
    public func encode(to encoder: Encoder) throws {
        guard wrappedValue.count == 195 else { throw FixedArrayError.invalidSize }
        var container = encoder.unkeyedContainer()
        try wrappedValue.forEach { try container.encode($0) }
    }
}

// MARK: - Array195 + Decodable

extension Array195: Decodable where Element : Decodable {
    /// Creates a fixed array with 195 elements using the provided decoder, by decoding its each element
    /// - Parameters:
    ///     - decoder: Decoder, used to create the array
    public init(from decoder: Decoder) throws {
        var container = try decoder.unkeyedContainer()
        wrappedValue = try (0..<195).map { _ in try container.decode(Element.self) }
    }
}

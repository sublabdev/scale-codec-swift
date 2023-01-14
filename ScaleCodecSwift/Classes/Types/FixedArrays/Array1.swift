import Foundation

// MARK: - Array1 + Encodable

/// An array with 1 element
@propertyWrapper public struct Array1<Element> {
    public var wrappedValue: [Element]
    public init(wrappedValue: [Element]) {
        self.wrappedValue = wrappedValue
    }
}

// MARK: - Array1 + Encodable

extension Array1: Encodable where Element : Encodable {
    /// Encodes the array via provided encoder
    /// - Parameters:
    ///     - encoder: An encoder that is used to encode the array
    public func encode(to encoder: Encoder) throws {
        guard wrappedValue.count == 1 else { throw FixedArrayError.invalidSize }
        var container = encoder.unkeyedContainer()
        try wrappedValue.forEach { try container.encode($0) }
    }
}

// MARK: - Array1 + Decodable

extension Array1: Decodable where Element : Decodable {
    /// Creates a fixed array with 1 element using the provided decoder, by decoding its each element
    /// - Parameters:
    ///     - decoder: Decoder, used to create the array
    public init(from decoder: Decoder) throws {
        var container = try decoder.unkeyedContainer()
        wrappedValue = try (0..<1).map { _ in try container.decode(Element.self) }
    }
}

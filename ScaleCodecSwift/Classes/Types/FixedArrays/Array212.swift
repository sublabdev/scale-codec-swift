import Foundation

// MARK: - Array212 + Encodable

@propertyWrapper public struct Array212<Element> {
    public var wrappedValue: [Element]
    public init(wrappedValue: [Element]) {
        self.wrappedValue = wrappedValue
    }
}

// MARK: - Array212 + Encodable

extension Array212: Encodable where Element : Encodable {
    public func encode(to encoder: Encoder) throws {
        guard wrappedValue.count == 212 else { throw FixedArrayError.invalidSize }
        var container = encoder.unkeyedContainer()
        try wrappedValue.forEach { try container.encode($0) }
    }
}

// MARK: - Array212 + Decodable

extension Array212: Decodable where Element : Decodable {
    public init(from decoder: Decoder) throws {
        var container = try decoder.unkeyedContainer()
        wrappedValue = try (0..<212).map { _ in try container.decode(Element.self) }
    }
}
import Foundation

// MARK: - Array125 + Encodable

@propertyWrapper public struct Array125<Element> {
    public var wrappedValue: [Element]
    public init(wrappedValue: [Element]) {
        self.wrappedValue = wrappedValue
    }
}

// MARK: - Array125 + Encodable

extension Array125: Encodable where Element : Encodable {
    public func encode(to encoder: Encoder) throws {
        guard wrappedValue.count == 125 else { throw FixedArrayError.invalidSize }
        var container = encoder.unkeyedContainer()
        try wrappedValue.forEach { try container.encode($0) }
    }
}

// MARK: - Array125 + Decodable

extension Array125: Decodable where Element : Decodable {
    public init(from decoder: Decoder) throws {
        var container = try decoder.unkeyedContainer()
        wrappedValue = try (0..<125).map { _ in try container.decode(Element.self) }
    }
}
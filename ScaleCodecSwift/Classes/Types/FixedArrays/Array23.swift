import Foundation

// MARK: - Array23 + Encodable

@propertyWrapper public struct Array23<Element> {
    public var wrappedValue: [Element]
    public init(wrappedValue: [Element]) {
        self.wrappedValue = wrappedValue
    }
}

// MARK: - Array23 + Encodable

extension Array23: Encodable where Element : Encodable {
    public func encode(to encoder: Encoder) throws {
        guard wrappedValue.count == 23 else { throw FixedArrayError.invalidSize }
        var container = encoder.unkeyedContainer()
        try wrappedValue.forEach { try container.encode($0) }
    }
}

// MARK: - Array23 + Decodable

extension Array23: Decodable where Element : Decodable {
    public init(from decoder: Decoder) throws {
        var container = try decoder.unkeyedContainer()
        wrappedValue = try (0..<23).map { _ in try container.decode(Element.self) }
    }
}
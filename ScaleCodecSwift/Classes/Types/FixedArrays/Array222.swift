import Foundation

// MARK: - Array222 + Encodable

@propertyWrapper public struct Array222<Element> {
    public var wrappedValue: [Element]
    public init(wrappedValue: [Element]) {
        self.wrappedValue = wrappedValue
    }
}

// MARK: - Array222 + Encodable

extension Array222: Encodable where Element : Encodable {
    public func encode(to encoder: Encoder) throws {
        guard wrappedValue.count == 222 else { throw FixedArrayError.invalidSize }
        var container = encoder.unkeyedContainer()
        try wrappedValue.forEach { try container.encode($0) }
    }
}

// MARK: - Array222 + Decodable

extension Array222: Decodable where Element : Decodable {
    public init(from decoder: Decoder) throws {
        var container = try decoder.unkeyedContainer()
        wrappedValue = try (0..<222).map { _ in try container.decode(Element.self) }
    }
}
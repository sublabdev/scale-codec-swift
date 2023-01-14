import Foundation

// MARK: - Array18 + Encodable

@propertyWrapper public struct Array18<Element> {
    public var wrappedValue: [Element]
    public init(wrappedValue: [Element]) {
        self.wrappedValue = wrappedValue
    }
}

// MARK: - Array18 + Encodable

extension Array18: Encodable where Element : Encodable {
    public func encode(to encoder: Encoder) throws {
        guard wrappedValue.count == 18 else { throw FixedArrayError.invalidSize }
        var container = encoder.unkeyedContainer()
        try wrappedValue.forEach { try container.encode($0) }
    }
}

// MARK: - Array18 + Decodable

extension Array18: Decodable where Element : Decodable {
    public init(from decoder: Decoder) throws {
        var container = try decoder.unkeyedContainer()
        wrappedValue = try (0..<18).map { _ in try container.decode(Element.self) }
    }
}
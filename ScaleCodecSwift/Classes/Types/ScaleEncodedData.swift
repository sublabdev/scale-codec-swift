import Foundation

/// A wrapper over scale encoded data
public struct ScaleEncodedData: Codable {
    public let value: Data
    public init(value: Data) {
        self.value = value
    }
}

extension Data {
    /// Converts `Data` to scale encoded
    /// - Returns: A scale encoded `Data`
    public func asScaleEncoded() -> ScaleEncodedData {
        .init(value: self)
    }
}

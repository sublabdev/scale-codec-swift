import Foundation

public struct ScaleEncodedData: Codable {
    public let value: Data
    public init(value: Data) {
        self.value = value
    }
}

extension Data {
    public func asScaleEncoded() -> ScaleEncodedData {
        .init(value: self)
    }
}

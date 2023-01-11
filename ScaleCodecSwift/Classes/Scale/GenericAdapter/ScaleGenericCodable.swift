import Foundation

/// An interface for a type that can be handled by `GenericAdapter`
protocol ScaleGenericCodable {
    /// An initializer of the type
    /// - Parameters:
    ///     - reader: DataReader with a data to encode/decode
    ///     - coder:
    init(from reader: DataReader, coder: ScaleCoder) throws
    /// Writes (encodes) a scale generic codable value via encoder
    /// - Parameters:
    ///     - coder: A coder that encodes the generic codable value
    /// - Returns: An encoded Data
    func write(coder: ScaleCoder) throws -> Data
}

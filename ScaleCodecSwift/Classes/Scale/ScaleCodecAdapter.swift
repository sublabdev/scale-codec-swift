import Foundation

/// A default protocol to which all values used in `ScaleCodecAdapter` should conform
public protocol ScaleCodecAdaptable {
}

/// Provides a default interface for adapters
open class ScaleCodecAdapter<T>: ScaleCodecAdaptable {
    public init() {}
    
    /// Reads (decodes) data to specified type
    /// - Parameters:
    ///     - type: The type to which should attempt to decode the data
    ///     - reader: DataReader which contains the data that needs to be decoded and handles reading it
    /// - Returns: Decoded value of the provided type
    open func read(_ type: T.Type, from reader: DataReader) throws -> T where T: Decodable {
        fatalError("not implemented")
    }
    
    /// Writes (encodes) the value
    /// - Parameters:
    ///     - value: The value to encode
    /// - Returns: The encoded Data
    open func write(value: T) throws -> Data where T: Encodable {
        fatalError("not implemented")
    }
}

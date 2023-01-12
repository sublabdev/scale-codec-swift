import Foundation

/// A default protocol to which all values used in `ScaleCodecAdapter` should conform
public protocol ScaleCodecAdaptable {
    func tryRead(from reader: DataReader) throws -> Any
    func tryWrite(value: Any) throws -> Data
}

/// Provides a default interface for adapters
open class ScaleCodecAdapter<T>: ScaleCodecAdaptable {
    enum Error: Swift.Error {
        case typeMismatch
    }
    
    public init() {}
    
    /// Reads (decodes) data to specified type
    /// - Parameters:
    ///     - type: The type to which should attempt to decode the data
    ///     - reader: DataReader which contains the data that needs to be decoded and handles reading it
    /// - Returns: Decoded value of the provided type
    open func read(_ type: T.Type?, from reader: DataReader) throws -> T {
        fatalError("not implemented")
    }
    
    public func tryRead(from reader: DataReader) throws -> Any {
        return try read(nil, from: reader)
    }
    
    /// Writes (encodes) the value
    /// - Parameters:
    ///     - value: The value to encode
    /// - Returns: The encoded Data
    open func write(value: T) throws -> Data {
        fatalError("not implemented")
    }
    
    public func tryWrite(value: Any) throws -> Data {
        guard let value = value as? T else {
            throw Error.typeMismatch
        }
        
        return try write(value: value)
    }
}

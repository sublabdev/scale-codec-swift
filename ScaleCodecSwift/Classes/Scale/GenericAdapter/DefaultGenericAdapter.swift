import Foundation

/// Generic adapter used for custom types that do not have their own adapter
public final class DefaultGenericAdapter<T>: ScaleCodecAdapter<T> {
    private let coder: ScaleCoder
    
    public init(coder: ScaleCoder) {
        self.coder = coder
    }
    
    /// Reads (decodes) data to specified type
    /// - Parameters:
    ///     - type: The type to which should attempt to decode the data
    ///     - reader: DataReader which contains the data that needs to be decoded and handles reading it
    /// - Returns: Decoded value of the provided type
    public override func read(_ type: T.Type, from reader: DataReader) throws -> T {
       if let type = type as? ScaleGenericCodable.Type {
            if let value = try type.init(from: reader, coder: coder) as? T {
                return value
            } else {
                // Shouldn't happen
                assertionFailure()
            }
        }
        
        throw ScaleCodecAdapterProvider.Error.noAdapterFound
    }
    
    /// Writes (encodes) the value
    /// - Parameters:
    ///     - value: The value to encode
    /// - Returns: The encoded Data
    public override func write(value: T) throws -> Data {
        if let value = value as? ScaleGenericCodable {
            return try value.write(coder: coder)
        }
        
        throw ScaleCodecAdapterProvider.Error.noAdapterFound
    }
}

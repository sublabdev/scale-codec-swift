import Foundation

/// Handles Scale Codec transaction for `Codable` types. Provides an mechanism for encoding and appending multiple
/// values, conforming to `Codable` and decode them.
public class ScaleCodecTransaction {
    private let codec = ScaleCoder.defaultCoder()
    private var data = Data()
    
    /// Appends additional `Codable` objects to existing encoded data
    /// - Returns: Returns `self` with updated encoded data
    func append<T: Codable>(obj: T) throws -> Self {
        data += try codec.encoder.encode(obj)
        return self
    }
    
    /// Decodes the existing encoded data
    /// - Returns: Decoded data of type `T`
    func commit<T: Codable>() throws -> T {
        try codec.decoder.decode(T.self, from: data)
    }
}

//public class ScaleCodecTransaction<T: Codable> {
//    private let codec = ScaleCoder.defaultCoder()
//    private var data = Data()
//
//    func append(obj: T) throws -> Self {
//        data += try codec.encoder.encode(obj)
//        return self
//    }
//    
//    func commit() throws -> T {
//        try codec.decoder.decode(T.self, from: data)
//    }
//}

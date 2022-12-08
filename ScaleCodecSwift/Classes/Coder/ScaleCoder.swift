import Foundation

/// An object that holds an encoder and a decoder
public final class ScaleCoder {
    /// Encoder used to encode (write) data from a specified type to Data
    public let encoder: ScaleEncoder
    /// Decoder used to decode (read) data to a specified type
    public let decoder: ScaleDecoder
    
    public init(encoder: ScaleEncoder, decoder: ScaleDecoder) {
        self.encoder = encoder
        self.decoder = decoder
    }
}

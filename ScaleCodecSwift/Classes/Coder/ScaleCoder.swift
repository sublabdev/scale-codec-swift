import Foundation

public final class ScaleCoder {
    let encoder: ScaleEncoder
    let decoder: ScaleDecoder
    
    public init(encoder: ScaleEncoder, decoder: ScaleDecoder) {
        self.encoder = encoder
        self.decoder = decoder
    }
}

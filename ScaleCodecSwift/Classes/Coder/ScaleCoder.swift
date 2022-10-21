import Foundation

class ScaleCoder {
    let encoder: ScaleEncoder
    let decoder: ScaleDecoder
    
    init(encoder: ScaleEncoder, decoder: ScaleDecoder) {
        self.encoder = encoder
        self.decoder = decoder
    }
}

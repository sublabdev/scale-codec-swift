import Foundation

/// An adapter provider factory for a generic type
struct DefaultGenericAdapterProviderFactory: ScaleCodecAdapterFactory {
    private let coder: ScaleCoder
    
    init(coder: ScaleCoder) {
        self.coder = coder
    }
    
    /// Makes a generic adapter for a generic type `T`
    /// - Returns: A generic adapter for a generic type `T`
    func make<T>() -> ScaleCodecAdapter<T> {
        DefaultGenericAdapter<T>(coder: coder)
    }
}

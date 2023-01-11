import Foundation

/// Scale codec adapter factory interface
public protocol ScaleCodecAdapterFactory {
    /// Makes an adapter for a generic type `T`
    /// - Returns: An adapter for a generic type `T`
    func make<T>() -> ScaleCodecAdapter<T>
}

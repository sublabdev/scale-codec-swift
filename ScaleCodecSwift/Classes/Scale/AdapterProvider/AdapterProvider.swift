import Foundation
import CommonSwift

/// Handles providing or creating of a `ScaleCodecAdapter` object
public struct AdapterProvider {
    let instance: (any ScaleCodecAdaptable)?
    let factory: ScaleCodecAdapterFactory?
    
    public init(instance: (any ScaleCodecAdaptable)? = nil, factory: ScaleCodecAdapterFactory? = nil) {
        self.instance = instance
        self.factory = factory
    }
    
    /// Creates or provides an existing (under it's `instance` property) adapter
    /// - Returns: An adapter either created or cached
    public func adapter<T>() -> ScaleCodecAdapter<T>? {
        (instance as? ScaleCodecAdapter<T>) ?? (factory?.make() as? ScaleCodecAdapter<T>) ?? nil
    }
}

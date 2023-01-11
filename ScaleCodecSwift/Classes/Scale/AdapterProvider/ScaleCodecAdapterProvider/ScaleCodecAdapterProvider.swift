import Foundation

/// Adapter provider that provides adapters based on the specified types
open class ScaleCodecAdapterProvider {
    /// Error cases that might appear while attempting to provide an adapter for a specified type
    enum Error: Swift.Error {
        case noOptionalAdapterProvided
        case noGenericAdapterProvided
        case noAdapterFound
    }
    
    private var adapters: [TypeWrapper: AdapterProvider] = [:]
    private var genericAdapters: [AdapterProvider] = []
    
    private var matchCache: [TypeWrapper: AdapterProvider] = [:]
    
    lazy var coder = ScaleCoder(adapterProvider: self)
    
    public init() { }

    /// Provides an adapter for a specified type
    /// - Parameters:
    ///     - type: A generic type for which an adapter should be found
    /// - Returns: An adapter for a provided type
    public func adapter<T>(for type: T.Type) throws -> ScaleCodecAdapter<T> {
        if let adapter = (try adapterProvider(for: type)?.adapter()) as? ScaleCodecAdapter<T> {
            return adapter
        }
        
        return genericAdapter(for: type)
    }
    
    /// Provides a generic adapter for a specified custom (or not directlye supported) type
    /// - Parameters:
    ///     - type: A generic type for which an adapter should be found
    /// - Returns: A generic adapter for a provided custom (or not directly supported) type
    private func genericAdapter<T>(for type: T.Type) -> ScaleCodecAdapter<T> {
        GenericAdapter(providers: genericAdapters) { [weak self] provider in
            self?.matchCache[TypeWrapper(type: type)] = provider
        }
    }
    
    /// Provides an adapter provider for a specified type
    /// - Parameters:
    ///     - type: A generic type for which an adapter provider should be found
    /// - Returns: An adapter provider for a provided type
    private func adapterProvider<T>(for type: T.Type) throws -> AdapterProvider? {
        if let provider = matchCache[TypeWrapper(type: type)] {
            return provider
        }
        
        return adapters[TypeWrapper(type: type)]
    }
    
    /// Caches an adapter for a specified type
    /// - Parameters:
    ///     - adapter: An adapter to cache
    ///     - type: A type for which it needs to be cached
    public func setAdapter<T>(_ adapter: ScaleCodecAdapter<T>, for type: T.Type) {
        adapters[TypeWrapper(type: type)] = .init(instance: adapter)
    }
    
    // Caches an adapter using a factory for a specified type
    /// - Parameters:
    ///     - factory: A factory from which an adapter is created later
    ///     - type: A type for which it needs to be cached
    public func setAdapter<T>(_ factory: ScaleCodecAdapterFactory, for type: T.Type) {
        adapters[TypeWrapper(type: type)] = .init(factory: factory)
    }
    
    /// Caches a generic adapter
    /// - Parameters:
    ///     - factory: A factory from which an adapter is created later
    public func addGenericAdapter(_ factory: ScaleCodecAdapterFactory) {
        genericAdapters.append(.init(factory: factory))
    }
}

// MARK: - Private

private extension ScaleCodecAdapterProvider {
    var encoder: ScaleEncoder {
        coder.encoder
    }
    
    var decoder: ScaleDecoder {
        coder.decoder
    }
}

import Foundation

/// A wrapper over a type. The wrapper conforms to `Hashable` protocol,
/// since it is used as a key when caching adapters
struct TypeWrapper: Hashable {
    let type: Any.Type
    
    func hash(into hasher: inout Hasher) {
        String(describing: type).hash(into: &hasher)
    }
    
    static func == (lhs: TypeWrapper, rhs: TypeWrapper) -> Bool {
        lhs.hashValue == rhs.hashValue
    }
}

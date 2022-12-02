import Foundation

public class DataHex {
    private let data: Data
    
    public init(data: Data) {
        self.data = data
    }
    
    public func encode(includePrefix: Bool = false) -> String {
        let encoded = data.map { String(format: "%02x", $0) }.joined()
        var prefix = ""
        
        if includePrefix {
            prefix = "0x"
        }
        
        return prefix + encoded
    }
}

public extension Data {
    var hex: DataHex {
        .init(data: self)
    }
    
    init?(hex: String) {
        guard hex.count.isMultiple(of: 2) else { return nil }
        
        var hex = hex
        if hex.hasPrefix("0x") {
            hex = .init(hex.suffix(hex.count - 2))
        }
        
        let chars = hex.map { $0 }
        let bytes = stride(from: 0, to: chars.count, by: 2)
            .map { String(chars[$0]) + String(chars[$0 + 1]) }
            .compactMap { UInt8($0, radix: 16) }
        
        guard hex.count / bytes.count == 2 else { return nil }
        self.init(bytes)
    }
}

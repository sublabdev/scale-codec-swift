import Foundation

extension Array where Element == UInt8 {
    /// `Data` from the array
    /// - Returns: `Data` from the array
    public func toData() -> Data {
        Data(self)
    }
}

import Foundation

extension ReversedCollection<Data> {
    /// `Data` from the reversed collection
    /// - Returns: `Data` from the reversed collection
    public func toData() -> Data {
        Data(self)
    }
}

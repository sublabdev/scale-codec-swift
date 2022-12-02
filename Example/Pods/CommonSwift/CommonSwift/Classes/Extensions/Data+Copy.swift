import Foundation

extension Data {
    func copyOf(size: Int) -> Data {
        self[0..<size]
    }
}

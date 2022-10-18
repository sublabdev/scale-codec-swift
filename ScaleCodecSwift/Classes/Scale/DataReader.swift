import Foundation

final class DataReader {
    
    let data: Data
    var offset = 0
    private var lastReadSize = 0
    
    init(data: Data) {
        self.data = data
    }

    func read(size: Int) -> [UInt8] {
        let endIndex = offset + size
        let result = data[offset..<endIndex]
        offset += size
        
        return Array(result)
    }
    
    func readByte() -> UInt8 {
        read(size: 1)[0]
    }
    
    func readToEnd() -> [UInt8] {
        read(size: data.count - offset)
    }
    
    func revert(offset: Int) {
        self.offset -= offset
    }
    
    func revertLast() {
        revert(offset: lastReadSize)
    }
}

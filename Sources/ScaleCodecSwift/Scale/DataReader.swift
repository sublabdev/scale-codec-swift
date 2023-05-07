/**
 *
 * Copyright 2023 SUBSTRATE LABORATORY LLC <info@sublab.dev>
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *    http://www.apache.org/licenses/LICENSE-2.0

 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 * 
 */

import Foundation

/// Handles `Data` reading
public final class DataReader {
    private enum Error: Swift.Error {
        case invalidDataOffset
    }
    
    /// Actual data to read
    public let data: Data
    /// An offset that shows how much has been read
    public var offset = 0
    private var lastReadSize = 0
    
    public init(data: Data) {
        self.data = data
    }
    
    public var dataWithOffset: Data {
        data[offset..<data.count]
    }

    /// Reads data of a specified size
    /// - Parameters:
    ///     - size: The size of `Data` to be read
    /// - Returns: A byte array as result of reading the `Data`
    public func read(size: Int) throws -> [UInt8] {
        let endIndex = offset + size
        
        guard endIndex <= data.count else {
            throw Error.invalidDataOffset
        }
        
        let result = data[offset..<endIndex]
        offset += size
        
        return Array(result)
    }
    
    /// Reads data by one byte (the size is set to one)
    /// - Returns: The first byte as a result of reading
    public func readByte() throws -> UInt8 {
        try read(size: 1)[0]
    }
    /// Reads data till the end
    /// /// - Returns: A byte array as result of reading the `Data`
    public func readToEnd() throws -> [UInt8] {
        try read(size: data.count - offset)
    }
    
    /// Reverts the offset
    public func revert(offset: Int) {
        self.offset -= offset
    }
    /// Reverts the offset to the last read size
    public func revertLast() {
        revert(offset: lastReadSize)
    }
}

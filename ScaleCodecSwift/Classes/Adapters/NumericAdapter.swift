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

/// A generic numeric adapter that handles read and write operations for numeric types (conforming to `FixedWidthInteger` protocol)
public class NumericAdapter<T: FixedWidthInteger>: ScaleCodecAdapter<T> where T: Codable {
    public override init() {}
    
    public override func read(_ type: T.Type?, from reader: DataReader) throws -> T {
        let stride = MemoryLayout<T>.stride
        return Self.fromData(try reader.read(size: stride))
    }
    
    public static func fromData(_ data: Data) -> T {
        fromData(data.map { $0 })
    }
    
    static func fromData(_ data: [UInt8]) -> T {
        T(littleEndian: data.withUnsafeBytes { $0.load(as: T.self) })
    }
    
    public override func write(value: T) throws -> Data {
        Self.toData(value)
    }
    
    public static func toData(_ value: T) -> Data {
        var value = value
        return withUnsafeBytes(of: &value) { Data($0) }
    }
}

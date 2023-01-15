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

/// A generic adapter that handles read and write operations for optionali types (conforming to `Codable` protocol)
public class OptionalAdapter<T: Codable>: ScaleCodecAdapter<T?> {
    private let coder: ScaleCoder
    
    public init(coder: ScaleCoder) {
        self.coder = coder
    }
    
    public override func read(_ type: T?.Type?, from reader: DataReader) throws -> T? {
        let isNil = try reader.readByte() == 0
        
        guard !isNil else {
            return nil
        }
        
        return try coder.decoder.decode(T.self, from: reader)
    }
    
    public override func write(value: T?) throws -> Data {
        guard let value = value else {
            return .init([0])
        }
        
        let encoded = try coder.encoder.encode(value)
        return .init([1]) + encoded
    }
}

extension Optional: ScaleGenericCodable where Wrapped: Codable {
    init(from reader: DataReader, coder: ScaleCoder) throws {
        self = try OptionalAdapter(coder: coder).read(Wrapped?.self, from: reader)
    }
    
    func write(coder: ScaleCoder) throws -> Data {
        try OptionalAdapter(coder: coder).write(value: self)
    }
}

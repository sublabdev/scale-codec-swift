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

/// Generic adapter used for custom types that do not have their own adapter
public final class DefaultGenericAdapter<T>: ScaleCodecAdapter<T> {
    private let coder: ScaleCoder
    
    public init(coder: ScaleCoder) {
        self.coder = coder
    }
    
    /// Reads (decodes) data to specified type
    /// - Parameters:
    ///     - type: The type to which should attempt to decode the data
    ///     - reader: DataReader which contains the data that needs to be decoded and handles reading it
    /// - Returns: Decoded value of the provided type
    public override func read(_ type: T.Type?, from reader: DataReader) throws -> T {
       if let type = type as? ScaleGenericCodable.Type {
            if let value = try type.init(from: reader, coder: coder) as? T {
                return value
            } else {
                // Shouldn't happen
                assertionFailure()
            }
        }
        
        throw ScaleCodecAdapterProvider.Error.noAdapterFound
    }
    
    /// Writes (encodes) the value
    /// - Parameters:
    ///     - value: The value to encode
    /// - Returns: The encoded Data
    public override func write(value: T) throws -> Data {
        if let value = value as? ScaleGenericCodable {
            return try value.write(coder: coder)
        }
        
        throw ScaleCodecAdapterProvider.Error.noAdapterFound
    }
}

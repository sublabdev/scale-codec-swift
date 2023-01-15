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

/// Handles Scale Codec transaction for `Codable` types. Provides an mechanism for encoding and appending multiple
/// values, conforming to `Codable` and decode them.
public class ScaleCodecTransaction {
    private let encoder: ScaleEncoder
    private var data = Data()
    
    init(encoder: ScaleEncoder) {
        self.encoder = encoder
    }
    
    /// Appends additional `Codable` objects to existing encoded data
    /// - Returns: Returns `self` with updated encoded data
    @discardableResult
    public func append<T: Codable>(_ value: T) throws -> Self {
        data += try encoder.encode(value)
        return self
    }
    
    /// Decodes the existing encoded data
    /// - Returns: An accumulated data of previously encoded objects
    public func commit() -> Data {
        data
    }
}

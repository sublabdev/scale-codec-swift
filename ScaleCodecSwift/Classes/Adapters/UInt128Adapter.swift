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
import CommonSwift

/// An adapter to handle read and write operations for UInt128
public final class UInt128Adapter: ScaleCodecAdapter<UInt128> {
    public override init() {}
    
    public override func read(_ type: UInt128.Type?, from reader: DataReader) throws -> UInt128 {
        try Data(reader.read(size: UInt128.size)).uInt128()
    }
    
    public override func write(value: UInt128) throws -> Data {
        value.data()
    }
}

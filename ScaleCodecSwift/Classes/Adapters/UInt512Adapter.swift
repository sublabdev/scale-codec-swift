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

/// An adapter to handle read and write operations for UInt512
public final class UInt512Adapter: ScaleCodecAdapter<UInt512> {
    public override init() {}
    
    public override func read(_ type: UInt512.Type?, from reader: DataReader) throws -> UInt512 {
        try Data(reader.read(size: UInt512.size)).uInt512()
    }
    
    public override func write(value: UInt512) throws -> Data {
        value.data()
    }
}

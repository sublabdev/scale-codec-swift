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

/// An adapter to handle read and write operations for Data
public final class DataAdapter: ScaleCodecAdapter<Data> {
    let arrayAdapter: ArrayAdapter<UInt8>
    
    public init(coder: ScaleCoder) {
        arrayAdapter = .init(coder: coder)
    }
    
    public override func read(_ type: Data.Type?, from reader: DataReader) throws -> Data {
        Data(try arrayAdapter.read([UInt8].self, from: reader))
    }
    
    public override func write(value: Data) throws -> Data {
        try arrayAdapter.write(value: value.map { $0 })
    }
}

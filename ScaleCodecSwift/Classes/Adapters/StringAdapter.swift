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

/// An adapter to handle read and write operations for String
public class StringAdapter: ScaleCodecAdapter<String> {
    enum Error: Swift.Error {
        case readError(Data)
        case writeError(String)
    }
    
    let dataAdapter: DataAdapter
    
    public init(coder: ScaleCoder) {
        dataAdapter = .init(coder: coder)
    }
    
    public override func read(_ type: String.Type?, from reader: DataReader) throws -> String {
        let data = try dataAdapter.read(Data.self, from: reader)
        
        guard let result = String(data: .init(data), encoding: .utf8) else {
            throw Error.readError(.init(data))
        }
        
        return result
    }
    
    public override func write(value: String) throws -> Data {
        guard let data = value.data(using: .utf8) else {
            throw Error.writeError(value)
        }
        
        return try dataAdapter.write(value: data)
    }
}

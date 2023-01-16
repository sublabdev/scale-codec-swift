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

final class GenericAdapter<T>: ScaleCodecAdapter<T> {
    private let providers: [AdapterProvider]
    private let onMatch: (AdapterProvider) -> Void
    
    init(providers: [AdapterProvider], onMatch: @escaping (AdapterProvider) -> Void) {
        self.providers = providers
        self.onMatch = onMatch
        super.init()
    }
    
    override func read(_ type: T.Type?, from reader: DataReader) throws -> T {
        for provider in providers {
            let offsetBeforeTry = reader.offset
            do {
                guard let adapter = provider.adapter() as? ScaleCodecAdapter<T> else { continue }
                let value = try adapter.read(type, from: reader)
                onMatch(provider)
                return value
            } catch {
                // Reset offset to position before failed reading
                reader.offset = offsetBeforeTry
            }
        }
        
        throw ScaleCodecAdapterProvider.Error.noAdapterFound
    }
    
    override func write(value: T) throws -> Data {
        for provider in providers {
            do {
                guard let adapter = provider.adapter() as? ScaleCodecAdapter<T> else { continue }
                let data = try adapter.write(value: value)
                onMatch(provider)
                return data
            } catch {
                // For debugging purpose
            }
        }
        
        throw ScaleCodecAdapterProvider.Error.noAdapterFound
    }
}

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

final class ScaleSingleValueDecodingContainer: SingleValueDecodingContainer {
    private enum ScaleSingleValueDecodingError: Swift.Error {
        case noAdapter
        case decodingError
    }
    
    // MARK: - SingleValueDecodingContainer
    
    var codingPath: [CodingKey]
    let userInfo: [CodingUserInfoKey: Any]
    
    // MARK: - Init
    
    private let decoderProvider: ScaleDecoderProvider
    private var dataReader: DataReader
    private let adapterProvider: ScaleCodecAdapterProvider
    
    init(
        decoderProvider: ScaleDecoderProvider,
        dataReader: DataReader,
        adapterProvider: ScaleCodecAdapterProvider,
        codingPath: [CodingKey],
        userInfo: [CodingUserInfoKey: Any]
    ) {
        self.decoderProvider = decoderProvider
        self.dataReader = dataReader
        self.adapterProvider = adapterProvider
        self.codingPath = codingPath
        self.userInfo = userInfo
    }
    
    // MARK: - Decoding
    // Decodes nil values
    func decodeNil() -> Bool {
        do {
            let result = (((try dataReader.read(size: 1).first.map { $0 == 0b0 }) as Bool??)) == true
            dataReader.offset -= 1
            
            return result
        } catch {
            assertionFailure()
            return false
        }
    }
    // Decodes Bool types
    func decode(_ type: Bool.Type) throws -> Bool {
        try read(type)
    }
    // Decodes String types
    func decode(_ type: String.Type) throws -> String {
        try read(type)
    }
    // Decodes Int types
    func decode(_ type: Int.Type) throws -> Int {
        try read(type)
    }
    // Decodes Int8 types
    func decode(_ type: Int8.Type) throws -> Int8 {
        try read(type)
    }
    // Decodes Int16 types
    func decode(_ type: Int16.Type) throws -> Int16 {
        try read(type)
    }
    // Decodes Int32 types
    func decode(_ type: Int32.Type) throws -> Int32 {
        try read(type)
    }
    // Decodes Int64 types
    func decode(_ type: Int64.Type) throws -> Int64 {
        try read(type)
    }
    // Decodes UInt types
    func decode(_ type: UInt.Type) throws -> UInt {
        try read(type)
    }
    // Decodes UInt8 types
    func decode(_ type: UInt8.Type) throws -> UInt8 {
        try read(type)
    }
    // Decodes UInt16 types
    func decode(_ type: UInt16.Type) throws -> UInt16 {
        try read(type)
    }
    // Decodes UInt32 types
    func decode(_ type: UInt32.Type) throws -> UInt32 {
        try read(type)
    }
    // Decodes UInt64 types
    func decode(_ type: UInt64.Type) throws -> UInt64 {
        try read(type)
    }
    // Decodes generic T types
    func decode<T: Decodable>(_ type: T.Type) throws -> T {
        try read(type)
    }
    
    // MARK: - Private
    // Reads generic T types
    func read<T: Decodable>(_ type: T.Type) throws -> T {
        try adapterProvider.coder.decoder.decode(
            T.self,
            from: dataReader
        )
    }
}

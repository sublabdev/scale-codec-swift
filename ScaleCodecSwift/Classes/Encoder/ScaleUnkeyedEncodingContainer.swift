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

final class ScaleUnkeyedEncodingContainer: UnkeyedEncodingContainer, ScaleEncodingContainer {
    
    // MARK: - UnkeyedEncodingContainer
    
    let codingPath: [CodingKey]
    let userInfo: [CodingUserInfoKey: Any]
    
    var count: Int { containers.count}
    
    // MARK: - ScaleEncodingContainer
    
    private var containers: [ScaleEncodingContainer] = []
    
    var data: Data {
        containers.reduce(Data()) { $0 + $1.data }
    }
    
    // MARK: - Init
    
    private let encoderProvider: ScaleEncoderProvider
    private let adapterProvider: ScaleCodecAdapterProvider
    
    init(
        encoderProvider: ScaleEncoderProvider,
        adapterProvider: ScaleCodecAdapterProvider,
        codingPath: [CodingKey] = [],
        userInfo: [CodingUserInfoKey: Any] = [:]
    ) {
        self.encoderProvider = encoderProvider
        self.adapterProvider = adapterProvider
        self.codingPath = codingPath
        self.userInfo = userInfo
    }
    
    // MARK: - Encoding
    
    // Encodes nil values using nested single value encoding container
    func encodeNil() throws {
        try nestedSingleValueEncodingContainer().encodeNil()
    }
    // Encodes Bool values using nested single value encoding container
    func encode(_ value: Bool) throws {
        try nestedSingleValueEncodingContainer().encode(value)
    }
    // Encodes String values using nested single value encoding container
    func encode(_ value: String) throws {
        try nestedSingleValueEncodingContainer().encode(value)
    }
    // Encodes Int values using nested single value encoding container
    func encode(_ value: Int) throws {
        try nestedSingleValueEncodingContainer().encode(value)
    }
    // Encodes Int8 values using nested single value encoding container
    func encode(_ value: Int8) throws {
        try nestedSingleValueEncodingContainer().encode(value)
    }
    // Encodes Int16 values using nested single value encoding container
    func encode(_ value: Int16) throws {
        try nestedSingleValueEncodingContainer().encode(value)
    }
    // Encodes Int32 values using nested single value encoding container
    func encode(_ value: Int32) throws {
        try nestedSingleValueEncodingContainer().encode(value)
    }
    // Encodes Int64 values using nested single value encoding container
    func encode(_ value: Int64) throws {
        try nestedSingleValueEncodingContainer().encode(value)
    }
    // Encodes UInt values using nested single value encoding container
    func encode(_ value: UInt) throws {
        try nestedSingleValueEncodingContainer().encode(value)
    }
    // Encodes UInt8 values using nested single value encoding container
    func encode(_ value: UInt8) throws {
        try nestedSingleValueEncodingContainer().encode(value)
    }
    // Encodes UInt16 values using nested single value encoding container
    func encode(_ value: UInt16) throws {
        try nestedSingleValueEncodingContainer().encode(value)
    }
    // Encodes UInt32 values using nested single value encoding container
    func encode(_ value: UInt32) throws {
        try nestedSingleValueEncodingContainer().encode(value)
    }
    // Encodes UInt64 values using nested single value encoding container
    func encode(_ value: UInt64) throws {
        try nestedSingleValueEncodingContainer().encode(value)
    }
    // Encodes generic T values using nested single value encoding container
    func encode<T>(_ value: T) throws where T : Encodable {
        try nestedSingleValueEncodingContainer().encode(value)
    }
    // Provides a nested single value encoding container
    private func nestedSingleValueEncodingContainer() throws -> ScaleSingleValueEncodingContainer {
        let container = ScaleSingleValueEncodingContainer(
            encoderProvider: encoderProvider,
            adapterProvider: adapterProvider,
            codingPath: codingPath,
            userInfo: userInfo
        )
        
        containers.append(container)
        return container
    }
    // Provides a nested scale keyed encoding container
    func nestedContainer<NestedKey>(
        keyedBy keyType: NestedKey.Type
    ) -> KeyedEncodingContainer<NestedKey> where NestedKey : CodingKey {
        KeyedEncodingContainer(ScaleKeyedEncodingContainer(
            encoderProvider: encoderProvider,
            adapterProvider: adapterProvider,
            codingPath: codingPath,
            userInfo: userInfo)
        )
    }
    // Provides a nested unkeyed encoding container
    func nestedUnkeyedContainer() -> UnkeyedEncodingContainer {
        ScaleUnkeyedEncodingContainer(
            encoderProvider: encoderProvider,
            adapterProvider: adapterProvider,
            codingPath: codingPath,
            userInfo: userInfo
        )
    }
    
    func superEncoder() -> Encoder {
        encoderProvider.encoder(codingPath: codingPath, userInfo: userInfo)
    }
}

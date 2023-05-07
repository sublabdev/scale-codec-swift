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

/// An object that holds an encoder and a decoder
public final class ScaleCoder {
    /// Encoder used to encode (write) data from a specified type to Data
    public let encoder: ScaleEncoder
    /// Decoder used to decode (read) data to a specified type
    public let decoder: ScaleDecoder
    
    public let adapterProvider: ScaleCodecAdapterProvider
    
    public init(adapterProvider: ScaleCodecAdapterProvider) {
        self.adapterProvider = adapterProvider
        self.encoder = ScaleEncoder(adapterProvider: adapterProvider)
        self.decoder = ScaleDecoder(adapterProvider: adapterProvider)
    }
    
    /// Creates a default coder that handles all the standard types
    /// - Returns: A default `ScaleCoder` created using the default adapter provider
    public static func `default`() -> ScaleCoder {
        .init(adapterProvider: DefaultScaleCodecAdapterProvider())
    }
    
    /// A transaction object for scale coded
    /// - Returns: An object which is used to decode (by appending additional values if needed) and encode
    /// `Codable` types
    public func transaction() -> ScaleCodecTransaction {
        ScaleCodecTransaction(encoder: encoder)
    }
}

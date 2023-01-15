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

/// An interface for a type that can be handled by `GenericAdapter`
protocol ScaleGenericCodable {
    /// An initializer of the type
    /// - Parameters:
    ///     - reader: DataReader with a data to encode/decode
    ///     - coder:
    init(from reader: DataReader, coder: ScaleCoder) throws
    /// Writes (encodes) a scale generic codable value via encoder
    /// - Parameters:
    ///     - coder: A coder that encodes the generic codable value
    /// - Returns: An encoded Data
    func write(coder: ScaleCoder) throws -> Data
}

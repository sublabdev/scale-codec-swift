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

final class ScaleEncodedDataAdapter: ScaleCodecAdapter<ScaleEncodedData> {
    override func read(_ type: ScaleEncodedData.Type?, from reader: DataReader) throws -> ScaleEncodedData {
        fatalError("shouldn't be used for reading purpose")
    }
    
    override func write(value: ScaleEncodedData) throws -> Data {
        value.value
    }
}

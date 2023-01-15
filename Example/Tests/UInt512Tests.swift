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

import XCTest
@testable import ScaleCodecSwift
import CommonSwift
import BigInt

class UInt512Tests: BaseTest<UInt512> {
    override func setUp() {
        adapter = UInt512Adapter()
        testValues = (0...TestConstants.testingIterationsCount)
            .map { _ in
                guard
                    let randomData1 = UUID().uuidString.data(using: .utf8),
                    let randomData2 = UUID().uuidString.data(using: .utf8)
                else {
                    return BigUInt(Data())
                }
                
                let data = (randomData1 + randomData2)[0..<UInt512.size]
                return BigUInt(data)
            }
            .map { UInt512(value: $0) }
    }
}

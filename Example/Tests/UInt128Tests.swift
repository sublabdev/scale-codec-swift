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

class UInt128Tests: BaseTest<UInt128> {
    override func setUp() {
        adapter = UInt128Adapter()
        testValues = (0...TestConstants.testingIterationsCount)
            .map { _ in
                guard let data = UUID().uuidString.data(using: .utf8)?[0..<UInt128.size] else { return BigUInt(Data()) }
                return BigUInt(data)
            }
            .map { UInt128(value: $0) }
    }
}

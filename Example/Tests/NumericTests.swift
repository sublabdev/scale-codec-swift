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
import XCTest
@testable import ScaleCodecSwift

class NumericInt8Tests: BaseNumericTest<Int8> { }

class NumericInt16Tests: BaseNumericTest<Int16> { }

class NumericInt32Tests: BaseNumericTest<Int32> { }

class NumericIntTests: BaseNumericTest<Int> { }

class NumericInt64Tests: BaseNumericTest<Int64> { }

// MARK: - UInts

class NumericUInt8Tests: BaseNumericTest<UInt8> { }

class NumericUInt16Tests: BaseNumericTest<UInt16> { }

class NumericUInt32Tests: BaseNumericTest<UInt32> { }

class NumericUIntTests: BaseNumericTest<UInt> {
}

class NumericUInt64Tests: BaseNumericTest<UInt64> {
    func testMetadataMagicNumber() {
        let magicNumber: UInt64 = 1635018093
        
        do {
            guard let encodedValue = try adapter?.write(value: magicNumber) else {
                XCTFail()
                return
            }
            
            let decodedValue = try adapter?.read(UInt64.self, from: DataReader(data: encodedValue))
            XCTAssertEqual(magicNumber, decodedValue)
        } catch let error {
            XCTFail(error.localizedDescription)
        }
    }
}

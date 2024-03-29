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
import BigInt
import CommonSwift

class BigUIntTests: BaseTest<BigUInt> {
    private let predefinedTestCases: [(BigUInt, String)] = [
        (BigUInt("0"), "00"),
        (BigUInt("1"), "04"),
        (BigUInt("63"), "fc"),
        (BigUInt("64"), "0101"),
        (BigUInt("255"), "fd03"),
        (BigUInt("511"),"fd07"),
        (BigUInt("16383"), "fdff"),
        (BigUInt("16384"), "02000100"),
        (BigUInt("65535"), "feff0300"),
        (BigUInt("1073741823"), "feffffff"),
        (BigUInt("1073741824"), "0300000040"),
        (BigUInt("4592230960395125066"), "134a01e750bae1ba3f")
    ]
    
    override func setUp() {
        adapter = BigUIntAdapter(coder: coder)
        testValues = predefinedTestCases.map { $0.0 }
    }
    
    func testSpecificValues() throws {
        guard let adapter = adapter else {
            XCTFail()
            return
        }
        
        for (value, hex) in predefinedTestCases {
            let encoded = try adapter.write(value: value)
            let data = Data(hex: hex)
           
            if encoded != data {
                print("Value: \(value) encoded to \(encoded.hex) expected \(hex)")
            }
            
            XCTAssertEqual(encoded, data)
        }
    }
}

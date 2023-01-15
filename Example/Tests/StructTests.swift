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

import BigInt
import XCTest
@testable import ScaleCodecSwift

class StructTests: BaseTest<TestingStruct> {
    override func setUp() {
        super.setUp()

        let testingStruct = TestingStruct(
            stringValue: "String Value",
            optionalStringValue: "Optional String Value",
            boolTrueValue: true,
            boolFalseValue: false,
            optionalBoolValue: false,
            int8Value: Int8.random(in: Int8.min...Int8.max),
            int8OptionalValue: Int8.random(in: Int8.min...Int8.max),
            int16Value: Int16.random(in: Int16.min...Int16.max),
            int16OptionalValue: Int16.random(in: Int16.min...Int16.max),
            int32Value: Int32.random(in: Int32.min...Int32.max),
            int32OptionalValue: Int32.random(in: Int32.min...Int32.max),
            intValue: Int.random(in: Int.min...Int.max),
            intOptionalValue: Int.random(in: Int.min...Int.max),
            int64Value: Int64.random(in: Int64.min...Int64.max),
            int64OptionalValue: Int64.random(in: Int64.min...Int64.max),
            uInt8Value: UInt8.random(in: UInt8.min...UInt8.max),
            uInt8OptionalValue: UInt8.random(in: UInt8.min...UInt8.max),
            uInt16Value: UInt16.random(in: UInt16.min...UInt16.max),
            uInt16OptionalValue: UInt16.random(in: UInt16.min...UInt16.max),
            uInt32Value: UInt32.random(in: UInt32.min...UInt32.max),
            uInt32OptionalValue: UInt32.random(in: UInt32.min...UInt32.max),
            uIntValue: UInt.random(in: UInt.min...UInt.max),
            uIntOptionalValue: UInt.random(in: UInt.min...UInt.max),
            uInt64Value: UInt64.random(in: UInt64.min...UInt64.max),
            uInt64OptionalValue: UInt64.random(in: UInt64.min...UInt64.max),
            bigUIntValue: BigUInt("255"),
            bigUIntOptionalValue: BigUInt("255"),
            arrayValue: [1, 2, 3],
            arrayOptionalValue: [1, 2, 3]
        )
        
        testValues = [testingStruct]
    }
}

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
import Foundation

struct TestingStruct: Codable, Equatable {
    let stringValue: String
    let optionalStringValue: String?
    var stringNilValue: String? = nil
    let boolTrueValue: Bool
    let boolFalseValue: Bool
    let optionalBoolValue: Bool?
    var boolNilValue: Bool? = nil
    let int8Value: Int8
    let int8OptionalValue: Int8?
    var int8NilValue: Int8? = nil
    let int16Value: Int16
    let int16OptionalValue: Int16?
    var int16NilValue: Int16? = nil
    let int32Value: Int32
    let int32OptionalValue: Int32?
    var int32NilValue: Int32? = nil
    let intValue: Int
    let intOptionalValue: Int?
    var intNilValue: Int? = nil
    let int64Value: Int64
    let int64OptionalValue: Int64?
    var int64NilValue: Int64? = nil
    let uInt8Value: UInt8
    let uInt8OptionalValue: UInt8?
    var uInt8NilValue: UInt8? = nil
    let uInt16Value: UInt16
    let uInt16OptionalValue: UInt16?
    var uInt16NilValue: UInt16? = nil
    let uInt32Value: UInt32
    let uInt32OptionalValue: UInt32?
    var uInt32NilValue: UInt32? = nil
    let uIntValue: UInt
    let uIntOptionalValue: UInt?
    var uIntNilValue: UInt? = nil
    let uInt64Value: UInt64
    let uInt64OptionalValue: UInt64?
    var uInt64NilValue: UInt64? = nil
    let bigUIntValue: BigUInt
    let bigUIntOptionalValue: BigUInt?
    var bigUIntNilValue: BigUInt? = nil
    let arrayValue: [Int]
    let arrayOptionalValue: [Int]?
    var arrayNilValue: [Int]? = nil
}

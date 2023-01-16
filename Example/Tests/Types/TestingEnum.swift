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
import ScaleCodecSwift

enum TestingEnum: Codable, Equatable {
    enum CodingKeys: Int, CodingKey {
        case simple
        case int8
        case optionalInt8
        case nilInt8
        case int16
        case optionalInt16
        case nilInt16
        case int32
        case optionalInt32
        case nilInt32
        case int
        case optionalInt
        case nilInt
        case int64
        case optionalInt64
        case nilInt64
        case uInt8
        case optionalUInt8
        case nilUInt8
        case uInt16
        case optionalUInt16
        case nilUInt16
        case uInt32
        case optionalUInt32
        case nilUInt32
        case uInt
        case optionalUInt
        case nilUInt
        case uInt64
        case optionalUInt64
        case nilUInt64
        case bigUInt
        case optionalBigUInt
        case nilBigUInt
        case bool
        case optionalBool
        case nilBool
        case string
        case optionalString
        case nilString
        case testingStruct
        case optionalTestingStruct
        case nilTestingStruct
        case array
        case optionalArray
        case nilArray
    }
    
    case simple
    case int8(Int8)
    case optionalInt8(Int8?)
    case nilInt8(Int8?)
    case int16(Int16)
    case optionalInt16(Int16?)
    case nilInt16(Int16?)
    case int32(Int32)
    case optionalInt32(Int32?)
    case nilInt32(Int32?)
    case int(Int)
    case optionalInt(Int?)
    case nilInt(Int?)
    case int64(Int64)
    case optionalInt64(Int64?)
    case nilInt64(Int64?)
    case uInt8(UInt8)
    case optionalUInt8(UInt8?)
    case nilUInt8(UInt8?)
    case uInt16(UInt16)
    case optionalUInt16(UInt16?)
    case nilUInt16(UInt16?)
    case uInt32(UInt32)
    case optionalUInt32(UInt32?)
    case nilUInt32(UInt32?)
    case uInt(UInt)
    case optionalUInt(UInt?)
    case nilUInt(UInt?)
    case uInt64(UInt64)
    case optionalUInt64(UInt64?)
    case nilUInt64(UInt64?)
    case bigUInt(BigUInt)
    case optionalBigUInt(BigUInt?)
    case nilBigUInt(BigUInt?)
    case bool(Bool)
    case optionalBool(Bool?)
    case nilBool(Bool?)
    case string(String)
    case optionalString(String?)
    case nilString(String?)
    case testingStruct(TestingStruct)
    case optionalTestingStruct(TestingStruct?)
    case nilTestingStruct(TestingStruct?)
    case array([Int])
    case optionalArray([Int]?)
    case nilArray([Int]?)
}

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

// A basic test object. All other tests are the subclasses of this one
class BaseTest<T: Codable>: XCTestCase where T: Equatable {
    var adapter: ScaleCodecAdapter<T>?
    var optionalAdapter: ScaleCodecAdapter<T?>?
    
    var coder: ScaleCoder {
        ScaleCoder.default()
    }
    
    var testValues: [T]?
    var optionalTestValues: [T?]? { testValues.map { $0 + [nil] } }
    
    func testAdapter() throws {
        // Adapter is not present for Enums and Structs
        guard let adapter = adapter else { return }

        guard let testValues = testValues else {
            XCTFail("No test values")
            return
        }

        try testValues.forEach { initialValue in
            let encodedValue = try adapter.write(value: initialValue)
            let decodedValue = try adapter.read(T.self, from: DataReader(data: encodedValue))
            
            if initialValue != decodedValue {
                print("Initial: \(initialValue) decoded: \(decodedValue)")
            }
            XCTAssertEqual(initialValue, decodedValue)
        }
    }
    
    func testOptionalAdapter() throws {
        guard let adapter = optionalAdapter else { return }
        
        guard let testValues = optionalTestValues else {
            XCTFail("No optional test values")
            return
        }

        try testValues.forEach { initialValue in
            let encodedValue = try adapter.write(value: initialValue)
            let decodedValue = try adapter.read(T?.self, from: DataReader(data: encodedValue))
            
            if initialValue != decodedValue {
                print("Initial: \(initialValue) decoded: \(decodedValue)")
            }
            XCTAssertEqual(initialValue, decodedValue)
        }
    }
    
    func testCoding() throws {
        guard let testValues = testValues else {
            XCTFail("No test values")
            return
        }

        try testValues.forEach { initialValue in
            let encodedValue = try coder.encoder.encode(initialValue)
            let decodedValue = try coder.decoder.decode(T.self, from: encodedValue)

            if initialValue != decodedValue {
                print("Initial: \(initialValue) decoded: \(decodedValue)")
            }
            XCTAssertEqual(initialValue, decodedValue)
        }
    }
    
    func testOptionalCoding() throws {
        guard let testValues = optionalTestValues else {
            XCTFail("No test values")
            return
        }

        try testValues.forEach { initialValue in
            let encodedValue = try coder.encoder.encode(initialValue)
            let decodedValue = try coder.decoder.decode(T?.self, from: encodedValue)
    
            if initialValue != decodedValue {
                print("Initial: \(initialValue) decoded: \(decodedValue)")
            }
            XCTAssertEqual(initialValue, decodedValue)
        }
    }
}

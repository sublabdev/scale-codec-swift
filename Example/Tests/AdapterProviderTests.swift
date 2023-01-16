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

class AdapterProviderTests: XCTestCase {
    func testProvider() {
        let scaleAdapterProvider = ScaleCodecAdapterProvider()
        let coder = ScaleCoder(adapterProvider: scaleAdapterProvider)
        
        let adapter = StringAdapter(coder: coder)
        
        scaleAdapterProvider.setAdapter(adapter, for: String.self)
        var returnedAdapter: ScaleCodecAdapter<String>?
        
        do {
            returnedAdapter = try scaleAdapterProvider.adapter(for: String.self)
        } catch {
            XCTFail("No Adapter found")
        }
        
        XCTAssertNotNil(returnedAdapter)
    }
}

class DefaultAdapterProviderTests: XCTestCase {
    func testDefaultAdapterProviderForArray() {
        let adapter = try? DefaultScaleCodecAdapterProvider().adapter(for: [Int].self)
        XCTAssertNotNil(adapter)
    }
    
    func testDefaultAdapterProviderForInt8() {
        testAdapter(NumericAdapter<Int8>.self, for: Int8.self)
    }
    
    func testDefaultAdapterProviderForInt16() {
        testAdapter(NumericAdapter<Int16>.self, for: Int16.self)
    }
    
    func testDefaultAdapterProviderForInt32() {
        testAdapter(NumericAdapter<Int32>.self, for: Int32.self)
    }
    
    func testDefaultAdapterProviderForInt() {
        testAdapter(NumericAdapter<Int>.self, for: Int.self)
    }
    
    func testDefaultAdapterProviderForInt64() {
        testAdapter(NumericAdapter<Int64>.self, for: Int64.self)
    }
    
    func testDefaultAdapterProviderForUInt8() {
        testAdapter(NumericAdapter<UInt8>.self, for: UInt8.self)
    }
    
    func testDefaultAdapterProviderForUInt16() {
        testAdapter(NumericAdapter<UInt16>.self, for: UInt16.self)
    }
    
    func testDefaultAdapterProviderForUInt32() {
        testAdapter(NumericAdapter<UInt32>.self, for: UInt32.self)
    }
    
    func testDefaultAdapterProviderForUInt() {
        testAdapter(NumericAdapter<UInt>.self, for: UInt.self)
    }
    
    func testDefaultAdapterProviderForUInt64() {
        testAdapter(NumericAdapter<UInt64>.self, for: UInt64.self)
    }
    
    func testDefaultAdapterProviderForBool() {
        testAdapter(BoolAdapter.self, for: Bool.self)
    }
    
    func testDefaultAdapterProviderForOptionalBool() {
        testAdapter(OptionalBoolAdapter.self, for: Bool?.self)
    }
    
    func testDefaultAdapterProviderForString() {
        testAdapter(StringAdapter.self, for: String.self)
    }
    
    private func testAdapter<T, A: ScaleCodecAdapter<T>>(_ adapter: A.Type, for type: T.Type) {
        let codecAdapter = try? DefaultScaleCodecAdapterProvider().adapter(for: T.self)
        XCTAssertNotNil(codecAdapter)
        XCTAssertTrue(codecAdapter is A)
    }
}

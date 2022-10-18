import XCTest
@testable import ScaleCodecSwift

// TODO: Add missing tests

class BaseTest<T: Codable>: XCTestCase where T: Equatable {
    
    var adapter: ScaleCodecAdapter<T>?
    var optionalAdapter: ScaleCodecAdapter<T?>?
    
    var coder: ScaleCoder {
        DefaultScaleCodecAdapterProvider().coder
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
    
    // TODO: This is crashing for some types
    
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

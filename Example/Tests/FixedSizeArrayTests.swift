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

@testable import ScaleCodecSwift
import XCTest

final class TestFixedSizedArrays: XCTestCase {
    func testArray1() throws {
        let codec = ScaleCoder.default()
        var array1 = Array1(wrappedValue: (0..<1).map { _ in UUID().uuidString })
        let encoded = try codec.encoder.encode(array1)
        let decoded = try codec.decoder.decode(Array1<String>.self, from: encoded)
        XCTAssertEqual(array1.wrappedValue, decoded.wrappedValue)
        
        func failingEncodingWithExtraElement() throws {
            array1.wrappedValue.append(UUID().uuidString)
            _ = try codec.encoder.encode(array1)
        }
        XCTAssertThrowsError(try failingEncodingWithExtraElement())
    }

    func testArray2() throws {
        let codec = ScaleCoder.default()
        var array2 = Array2(wrappedValue: (0..<2).map { _ in UUID().uuidString })
        let encoded = try codec.encoder.encode(array2)
        let decoded = try codec.decoder.decode(Array2<String>.self, from: encoded)
        XCTAssertEqual(array2.wrappedValue, decoded.wrappedValue)
        
        func failingEncodingWithExtraElement() throws {
            array2.wrappedValue.append(UUID().uuidString)
            _ = try codec.encoder.encode(array2)
        }
        XCTAssertThrowsError(try failingEncodingWithExtraElement())
    }

    func testArray3() throws {
        let codec = ScaleCoder.default()
        var array3 = Array3(wrappedValue: (0..<3).map { _ in UUID().uuidString })
        let encoded = try codec.encoder.encode(array3)
        let decoded = try codec.decoder.decode(Array3<String>.self, from: encoded)
        XCTAssertEqual(array3.wrappedValue, decoded.wrappedValue)
        
        func failingEncodingWithExtraElement() throws {
            array3.wrappedValue.append(UUID().uuidString)
            _ = try codec.encoder.encode(array3)
        }
        XCTAssertThrowsError(try failingEncodingWithExtraElement())
    }

    func testArray4() throws {
        let codec = ScaleCoder.default()
        var array4 = Array4(wrappedValue: (0..<4).map { _ in UUID().uuidString })
        let encoded = try codec.encoder.encode(array4)
        let decoded = try codec.decoder.decode(Array4<String>.self, from: encoded)
        XCTAssertEqual(array4.wrappedValue, decoded.wrappedValue)
        
        func failingEncodingWithExtraElement() throws {
            array4.wrappedValue.append(UUID().uuidString)
            _ = try codec.encoder.encode(array4)
        }
        XCTAssertThrowsError(try failingEncodingWithExtraElement())
    }

    func testArray5() throws {
        let codec = ScaleCoder.default()
        var array5 = Array5(wrappedValue: (0..<5).map { _ in UUID().uuidString })
        let encoded = try codec.encoder.encode(array5)
        let decoded = try codec.decoder.decode(Array5<String>.self, from: encoded)
        XCTAssertEqual(array5.wrappedValue, decoded.wrappedValue)
        
        func failingEncodingWithExtraElement() throws {
            array5.wrappedValue.append(UUID().uuidString)
            _ = try codec.encoder.encode(array5)
        }
        XCTAssertThrowsError(try failingEncodingWithExtraElement())
    }

    func testArray6() throws {
        let codec = ScaleCoder.default()
        var array6 = Array6(wrappedValue: (0..<6).map { _ in UUID().uuidString })
        let encoded = try codec.encoder.encode(array6)
        let decoded = try codec.decoder.decode(Array6<String>.self, from: encoded)
        XCTAssertEqual(array6.wrappedValue, decoded.wrappedValue)
        
        func failingEncodingWithExtraElement() throws {
            array6.wrappedValue.append(UUID().uuidString)
            _ = try codec.encoder.encode(array6)
        }
        XCTAssertThrowsError(try failingEncodingWithExtraElement())
    }

    func testArray7() throws {
        let codec = ScaleCoder.default()
        var array7 = Array7(wrappedValue: (0..<7).map { _ in UUID().uuidString })
        let encoded = try codec.encoder.encode(array7)
        let decoded = try codec.decoder.decode(Array7<String>.self, from: encoded)
        XCTAssertEqual(array7.wrappedValue, decoded.wrappedValue)
        
        func failingEncodingWithExtraElement() throws {
            array7.wrappedValue.append(UUID().uuidString)
            _ = try codec.encoder.encode(array7)
        }
        XCTAssertThrowsError(try failingEncodingWithExtraElement())
    }

    func testArray8() throws {
        let codec = ScaleCoder.default()
        var array8 = Array8(wrappedValue: (0..<8).map { _ in UUID().uuidString })
        let encoded = try codec.encoder.encode(array8)
        let decoded = try codec.decoder.decode(Array8<String>.self, from: encoded)
        XCTAssertEqual(array8.wrappedValue, decoded.wrappedValue)
        
        func failingEncodingWithExtraElement() throws {
            array8.wrappedValue.append(UUID().uuidString)
            _ = try codec.encoder.encode(array8)
        }
        XCTAssertThrowsError(try failingEncodingWithExtraElement())
    }

    func testArray9() throws {
        let codec = ScaleCoder.default()
        var array9 = Array9(wrappedValue: (0..<9).map { _ in UUID().uuidString })
        let encoded = try codec.encoder.encode(array9)
        let decoded = try codec.decoder.decode(Array9<String>.self, from: encoded)
        XCTAssertEqual(array9.wrappedValue, decoded.wrappedValue)
        
        func failingEncodingWithExtraElement() throws {
            array9.wrappedValue.append(UUID().uuidString)
            _ = try codec.encoder.encode(array9)
        }
        XCTAssertThrowsError(try failingEncodingWithExtraElement())
    }

    func testArray10() throws {
        let codec = ScaleCoder.default()
        var array10 = Array10(wrappedValue: (0..<10).map { _ in UUID().uuidString })
        let encoded = try codec.encoder.encode(array10)
        let decoded = try codec.decoder.decode(Array10<String>.self, from: encoded)
        XCTAssertEqual(array10.wrappedValue, decoded.wrappedValue)
        
        func failingEncodingWithExtraElement() throws {
            array10.wrappedValue.append(UUID().uuidString)
            _ = try codec.encoder.encode(array10)
        }
        XCTAssertThrowsError(try failingEncodingWithExtraElement())
    }

    func testArray11() throws {
        let codec = ScaleCoder.default()
        var array11 = Array11(wrappedValue: (0..<11).map { _ in UUID().uuidString })
        let encoded = try codec.encoder.encode(array11)
        let decoded = try codec.decoder.decode(Array11<String>.self, from: encoded)
        XCTAssertEqual(array11.wrappedValue, decoded.wrappedValue)
        
        func failingEncodingWithExtraElement() throws {
            array11.wrappedValue.append(UUID().uuidString)
            _ = try codec.encoder.encode(array11)
        }
        XCTAssertThrowsError(try failingEncodingWithExtraElement())
    }

    func testArray12() throws {
        let codec = ScaleCoder.default()
        var array12 = Array12(wrappedValue: (0..<12).map { _ in UUID().uuidString })
        let encoded = try codec.encoder.encode(array12)
        let decoded = try codec.decoder.decode(Array12<String>.self, from: encoded)
        XCTAssertEqual(array12.wrappedValue, decoded.wrappedValue)
        
        func failingEncodingWithExtraElement() throws {
            array12.wrappedValue.append(UUID().uuidString)
            _ = try codec.encoder.encode(array12)
        }
        XCTAssertThrowsError(try failingEncodingWithExtraElement())
    }

    func testArray13() throws {
        let codec = ScaleCoder.default()
        var array13 = Array13(wrappedValue: (0..<13).map { _ in UUID().uuidString })
        let encoded = try codec.encoder.encode(array13)
        let decoded = try codec.decoder.decode(Array13<String>.self, from: encoded)
        XCTAssertEqual(array13.wrappedValue, decoded.wrappedValue)
        
        func failingEncodingWithExtraElement() throws {
            array13.wrappedValue.append(UUID().uuidString)
            _ = try codec.encoder.encode(array13)
        }
        XCTAssertThrowsError(try failingEncodingWithExtraElement())
    }

    func testArray14() throws {
        let codec = ScaleCoder.default()
        var array14 = Array14(wrappedValue: (0..<14).map { _ in UUID().uuidString })
        let encoded = try codec.encoder.encode(array14)
        let decoded = try codec.decoder.decode(Array14<String>.self, from: encoded)
        XCTAssertEqual(array14.wrappedValue, decoded.wrappedValue)
        
        func failingEncodingWithExtraElement() throws {
            array14.wrappedValue.append(UUID().uuidString)
            _ = try codec.encoder.encode(array14)
        }
        XCTAssertThrowsError(try failingEncodingWithExtraElement())
    }

    func testArray15() throws {
        let codec = ScaleCoder.default()
        var array15 = Array15(wrappedValue: (0..<15).map { _ in UUID().uuidString })
        let encoded = try codec.encoder.encode(array15)
        let decoded = try codec.decoder.decode(Array15<String>.self, from: encoded)
        XCTAssertEqual(array15.wrappedValue, decoded.wrappedValue)
        
        func failingEncodingWithExtraElement() throws {
            array15.wrappedValue.append(UUID().uuidString)
            _ = try codec.encoder.encode(array15)
        }
        XCTAssertThrowsError(try failingEncodingWithExtraElement())
    }

    func testArray16() throws {
        let codec = ScaleCoder.default()
        var array16 = Array16(wrappedValue: (0..<16).map { _ in UUID().uuidString })
        let encoded = try codec.encoder.encode(array16)
        let decoded = try codec.decoder.decode(Array16<String>.self, from: encoded)
        XCTAssertEqual(array16.wrappedValue, decoded.wrappedValue)
        
        func failingEncodingWithExtraElement() throws {
            array16.wrappedValue.append(UUID().uuidString)
            _ = try codec.encoder.encode(array16)
        }
        XCTAssertThrowsError(try failingEncodingWithExtraElement())
    }

    func testArray17() throws {
        let codec = ScaleCoder.default()
        var array17 = Array17(wrappedValue: (0..<17).map { _ in UUID().uuidString })
        let encoded = try codec.encoder.encode(array17)
        let decoded = try codec.decoder.decode(Array17<String>.self, from: encoded)
        XCTAssertEqual(array17.wrappedValue, decoded.wrappedValue)
        
        func failingEncodingWithExtraElement() throws {
            array17.wrappedValue.append(UUID().uuidString)
            _ = try codec.encoder.encode(array17)
        }
        XCTAssertThrowsError(try failingEncodingWithExtraElement())
    }

    func testArray18() throws {
        let codec = ScaleCoder.default()
        var array18 = Array18(wrappedValue: (0..<18).map { _ in UUID().uuidString })
        let encoded = try codec.encoder.encode(array18)
        let decoded = try codec.decoder.decode(Array18<String>.self, from: encoded)
        XCTAssertEqual(array18.wrappedValue, decoded.wrappedValue)
        
        func failingEncodingWithExtraElement() throws {
            array18.wrappedValue.append(UUID().uuidString)
            _ = try codec.encoder.encode(array18)
        }
        XCTAssertThrowsError(try failingEncodingWithExtraElement())
    }

    func testArray19() throws {
        let codec = ScaleCoder.default()
        var array19 = Array19(wrappedValue: (0..<19).map { _ in UUID().uuidString })
        let encoded = try codec.encoder.encode(array19)
        let decoded = try codec.decoder.decode(Array19<String>.self, from: encoded)
        XCTAssertEqual(array19.wrappedValue, decoded.wrappedValue)
        
        func failingEncodingWithExtraElement() throws {
            array19.wrappedValue.append(UUID().uuidString)
            _ = try codec.encoder.encode(array19)
        }
        XCTAssertThrowsError(try failingEncodingWithExtraElement())
    }

    func testArray20() throws {
        let codec = ScaleCoder.default()
        var array20 = Array20(wrappedValue: (0..<20).map { _ in UUID().uuidString })
        let encoded = try codec.encoder.encode(array20)
        let decoded = try codec.decoder.decode(Array20<String>.self, from: encoded)
        XCTAssertEqual(array20.wrappedValue, decoded.wrappedValue)
        
        func failingEncodingWithExtraElement() throws {
            array20.wrappedValue.append(UUID().uuidString)
            _ = try codec.encoder.encode(array20)
        }
        XCTAssertThrowsError(try failingEncodingWithExtraElement())
    }

    func testArray21() throws {
        let codec = ScaleCoder.default()
        var array21 = Array21(wrappedValue: (0..<21).map { _ in UUID().uuidString })
        let encoded = try codec.encoder.encode(array21)
        let decoded = try codec.decoder.decode(Array21<String>.self, from: encoded)
        XCTAssertEqual(array21.wrappedValue, decoded.wrappedValue)
        
        func failingEncodingWithExtraElement() throws {
            array21.wrappedValue.append(UUID().uuidString)
            _ = try codec.encoder.encode(array21)
        }
        XCTAssertThrowsError(try failingEncodingWithExtraElement())
    }

    func testArray22() throws {
        let codec = ScaleCoder.default()
        var array22 = Array22(wrappedValue: (0..<22).map { _ in UUID().uuidString })
        let encoded = try codec.encoder.encode(array22)
        let decoded = try codec.decoder.decode(Array22<String>.self, from: encoded)
        XCTAssertEqual(array22.wrappedValue, decoded.wrappedValue)
        
        func failingEncodingWithExtraElement() throws {
            array22.wrappedValue.append(UUID().uuidString)
            _ = try codec.encoder.encode(array22)
        }
        XCTAssertThrowsError(try failingEncodingWithExtraElement())
    }

    func testArray23() throws {
        let codec = ScaleCoder.default()
        var array23 = Array23(wrappedValue: (0..<23).map { _ in UUID().uuidString })
        let encoded = try codec.encoder.encode(array23)
        let decoded = try codec.decoder.decode(Array23<String>.self, from: encoded)
        XCTAssertEqual(array23.wrappedValue, decoded.wrappedValue)
        
        func failingEncodingWithExtraElement() throws {
            array23.wrappedValue.append(UUID().uuidString)
            _ = try codec.encoder.encode(array23)
        }
        XCTAssertThrowsError(try failingEncodingWithExtraElement())
    }

    func testArray24() throws {
        let codec = ScaleCoder.default()
        var array24 = Array24(wrappedValue: (0..<24).map { _ in UUID().uuidString })
        let encoded = try codec.encoder.encode(array24)
        let decoded = try codec.decoder.decode(Array24<String>.self, from: encoded)
        XCTAssertEqual(array24.wrappedValue, decoded.wrappedValue)
        
        func failingEncodingWithExtraElement() throws {
            array24.wrappedValue.append(UUID().uuidString)
            _ = try codec.encoder.encode(array24)
        }
        XCTAssertThrowsError(try failingEncodingWithExtraElement())
    }

    func testArray25() throws {
        let codec = ScaleCoder.default()
        var array25 = Array25(wrappedValue: (0..<25).map { _ in UUID().uuidString })
        let encoded = try codec.encoder.encode(array25)
        let decoded = try codec.decoder.decode(Array25<String>.self, from: encoded)
        XCTAssertEqual(array25.wrappedValue, decoded.wrappedValue)
        
        func failingEncodingWithExtraElement() throws {
            array25.wrappedValue.append(UUID().uuidString)
            _ = try codec.encoder.encode(array25)
        }
        XCTAssertThrowsError(try failingEncodingWithExtraElement())
    }

    func testArray26() throws {
        let codec = ScaleCoder.default()
        var array26 = Array26(wrappedValue: (0..<26).map { _ in UUID().uuidString })
        let encoded = try codec.encoder.encode(array26)
        let decoded = try codec.decoder.decode(Array26<String>.self, from: encoded)
        XCTAssertEqual(array26.wrappedValue, decoded.wrappedValue)
        
        func failingEncodingWithExtraElement() throws {
            array26.wrappedValue.append(UUID().uuidString)
            _ = try codec.encoder.encode(array26)
        }
        XCTAssertThrowsError(try failingEncodingWithExtraElement())
    }

    func testArray27() throws {
        let codec = ScaleCoder.default()
        var array27 = Array27(wrappedValue: (0..<27).map { _ in UUID().uuidString })
        let encoded = try codec.encoder.encode(array27)
        let decoded = try codec.decoder.decode(Array27<String>.self, from: encoded)
        XCTAssertEqual(array27.wrappedValue, decoded.wrappedValue)
        
        func failingEncodingWithExtraElement() throws {
            array27.wrappedValue.append(UUID().uuidString)
            _ = try codec.encoder.encode(array27)
        }
        XCTAssertThrowsError(try failingEncodingWithExtraElement())
    }

    func testArray28() throws {
        let codec = ScaleCoder.default()
        var array28 = Array28(wrappedValue: (0..<28).map { _ in UUID().uuidString })
        let encoded = try codec.encoder.encode(array28)
        let decoded = try codec.decoder.decode(Array28<String>.self, from: encoded)
        XCTAssertEqual(array28.wrappedValue, decoded.wrappedValue)
        
        func failingEncodingWithExtraElement() throws {
            array28.wrappedValue.append(UUID().uuidString)
            _ = try codec.encoder.encode(array28)
        }
        XCTAssertThrowsError(try failingEncodingWithExtraElement())
    }

    func testArray29() throws {
        let codec = ScaleCoder.default()
        var array29 = Array29(wrappedValue: (0..<29).map { _ in UUID().uuidString })
        let encoded = try codec.encoder.encode(array29)
        let decoded = try codec.decoder.decode(Array29<String>.self, from: encoded)
        XCTAssertEqual(array29.wrappedValue, decoded.wrappedValue)
        
        func failingEncodingWithExtraElement() throws {
            array29.wrappedValue.append(UUID().uuidString)
            _ = try codec.encoder.encode(array29)
        }
        XCTAssertThrowsError(try failingEncodingWithExtraElement())
    }

    func testArray30() throws {
        let codec = ScaleCoder.default()
        var array30 = Array30(wrappedValue: (0..<30).map { _ in UUID().uuidString })
        let encoded = try codec.encoder.encode(array30)
        let decoded = try codec.decoder.decode(Array30<String>.self, from: encoded)
        XCTAssertEqual(array30.wrappedValue, decoded.wrappedValue)
        
        func failingEncodingWithExtraElement() throws {
            array30.wrappedValue.append(UUID().uuidString)
            _ = try codec.encoder.encode(array30)
        }
        XCTAssertThrowsError(try failingEncodingWithExtraElement())
    }

    func testArray31() throws {
        let codec = ScaleCoder.default()
        var array31 = Array31(wrappedValue: (0..<31).map { _ in UUID().uuidString })
        let encoded = try codec.encoder.encode(array31)
        let decoded = try codec.decoder.decode(Array31<String>.self, from: encoded)
        XCTAssertEqual(array31.wrappedValue, decoded.wrappedValue)
        
        func failingEncodingWithExtraElement() throws {
            array31.wrappedValue.append(UUID().uuidString)
            _ = try codec.encoder.encode(array31)
        }
        XCTAssertThrowsError(try failingEncodingWithExtraElement())
    }

    func testArray32() throws {
        let codec = ScaleCoder.default()
        var array32 = Array32(wrappedValue: (0..<32).map { _ in UUID().uuidString })
        let encoded = try codec.encoder.encode(array32)
        let decoded = try codec.decoder.decode(Array32<String>.self, from: encoded)
        XCTAssertEqual(array32.wrappedValue, decoded.wrappedValue)
        
        func failingEncodingWithExtraElement() throws {
            array32.wrappedValue.append(UUID().uuidString)
            _ = try codec.encoder.encode(array32)
        }
        XCTAssertThrowsError(try failingEncodingWithExtraElement())
    }

    func testArray33() throws {
        let codec = ScaleCoder.default()
        var array33 = Array33(wrappedValue: (0..<33).map { _ in UUID().uuidString })
        let encoded = try codec.encoder.encode(array33)
        let decoded = try codec.decoder.decode(Array33<String>.self, from: encoded)
        XCTAssertEqual(array33.wrappedValue, decoded.wrappedValue)
        
        func failingEncodingWithExtraElement() throws {
            array33.wrappedValue.append(UUID().uuidString)
            _ = try codec.encoder.encode(array33)
        }
        XCTAssertThrowsError(try failingEncodingWithExtraElement())
    }

    func testArray34() throws {
        let codec = ScaleCoder.default()
        var array34 = Array34(wrappedValue: (0..<34).map { _ in UUID().uuidString })
        let encoded = try codec.encoder.encode(array34)
        let decoded = try codec.decoder.decode(Array34<String>.self, from: encoded)
        XCTAssertEqual(array34.wrappedValue, decoded.wrappedValue)
        
        func failingEncodingWithExtraElement() throws {
            array34.wrappedValue.append(UUID().uuidString)
            _ = try codec.encoder.encode(array34)
        }
        XCTAssertThrowsError(try failingEncodingWithExtraElement())
    }

    func testArray35() throws {
        let codec = ScaleCoder.default()
        var array35 = Array35(wrappedValue: (0..<35).map { _ in UUID().uuidString })
        let encoded = try codec.encoder.encode(array35)
        let decoded = try codec.decoder.decode(Array35<String>.self, from: encoded)
        XCTAssertEqual(array35.wrappedValue, decoded.wrappedValue)
        
        func failingEncodingWithExtraElement() throws {
            array35.wrappedValue.append(UUID().uuidString)
            _ = try codec.encoder.encode(array35)
        }
        XCTAssertThrowsError(try failingEncodingWithExtraElement())
    }

    func testArray36() throws {
        let codec = ScaleCoder.default()
        var array36 = Array36(wrappedValue: (0..<36).map { _ in UUID().uuidString })
        let encoded = try codec.encoder.encode(array36)
        let decoded = try codec.decoder.decode(Array36<String>.self, from: encoded)
        XCTAssertEqual(array36.wrappedValue, decoded.wrappedValue)
        
        func failingEncodingWithExtraElement() throws {
            array36.wrappedValue.append(UUID().uuidString)
            _ = try codec.encoder.encode(array36)
        }
        XCTAssertThrowsError(try failingEncodingWithExtraElement())
    }

    func testArray37() throws {
        let codec = ScaleCoder.default()
        var array37 = Array37(wrappedValue: (0..<37).map { _ in UUID().uuidString })
        let encoded = try codec.encoder.encode(array37)
        let decoded = try codec.decoder.decode(Array37<String>.self, from: encoded)
        XCTAssertEqual(array37.wrappedValue, decoded.wrappedValue)
        
        func failingEncodingWithExtraElement() throws {
            array37.wrappedValue.append(UUID().uuidString)
            _ = try codec.encoder.encode(array37)
        }
        XCTAssertThrowsError(try failingEncodingWithExtraElement())
    }

    func testArray38() throws {
        let codec = ScaleCoder.default()
        var array38 = Array38(wrappedValue: (0..<38).map { _ in UUID().uuidString })
        let encoded = try codec.encoder.encode(array38)
        let decoded = try codec.decoder.decode(Array38<String>.self, from: encoded)
        XCTAssertEqual(array38.wrappedValue, decoded.wrappedValue)
        
        func failingEncodingWithExtraElement() throws {
            array38.wrappedValue.append(UUID().uuidString)
            _ = try codec.encoder.encode(array38)
        }
        XCTAssertThrowsError(try failingEncodingWithExtraElement())
    }

    func testArray39() throws {
        let codec = ScaleCoder.default()
        var array39 = Array39(wrappedValue: (0..<39).map { _ in UUID().uuidString })
        let encoded = try codec.encoder.encode(array39)
        let decoded = try codec.decoder.decode(Array39<String>.self, from: encoded)
        XCTAssertEqual(array39.wrappedValue, decoded.wrappedValue)
        
        func failingEncodingWithExtraElement() throws {
            array39.wrappedValue.append(UUID().uuidString)
            _ = try codec.encoder.encode(array39)
        }
        XCTAssertThrowsError(try failingEncodingWithExtraElement())
    }

    func testArray40() throws {
        let codec = ScaleCoder.default()
        var array40 = Array40(wrappedValue: (0..<40).map { _ in UUID().uuidString })
        let encoded = try codec.encoder.encode(array40)
        let decoded = try codec.decoder.decode(Array40<String>.self, from: encoded)
        XCTAssertEqual(array40.wrappedValue, decoded.wrappedValue)
        
        func failingEncodingWithExtraElement() throws {
            array40.wrappedValue.append(UUID().uuidString)
            _ = try codec.encoder.encode(array40)
        }
        XCTAssertThrowsError(try failingEncodingWithExtraElement())
    }

    func testArray41() throws {
        let codec = ScaleCoder.default()
        var array41 = Array41(wrappedValue: (0..<41).map { _ in UUID().uuidString })
        let encoded = try codec.encoder.encode(array41)
        let decoded = try codec.decoder.decode(Array41<String>.self, from: encoded)
        XCTAssertEqual(array41.wrappedValue, decoded.wrappedValue)
        
        func failingEncodingWithExtraElement() throws {
            array41.wrappedValue.append(UUID().uuidString)
            _ = try codec.encoder.encode(array41)
        }
        XCTAssertThrowsError(try failingEncodingWithExtraElement())
    }

    func testArray42() throws {
        let codec = ScaleCoder.default()
        var array42 = Array42(wrappedValue: (0..<42).map { _ in UUID().uuidString })
        let encoded = try codec.encoder.encode(array42)
        let decoded = try codec.decoder.decode(Array42<String>.self, from: encoded)
        XCTAssertEqual(array42.wrappedValue, decoded.wrappedValue)
        
        func failingEncodingWithExtraElement() throws {
            array42.wrappedValue.append(UUID().uuidString)
            _ = try codec.encoder.encode(array42)
        }
        XCTAssertThrowsError(try failingEncodingWithExtraElement())
    }

    func testArray43() throws {
        let codec = ScaleCoder.default()
        var array43 = Array43(wrappedValue: (0..<43).map { _ in UUID().uuidString })
        let encoded = try codec.encoder.encode(array43)
        let decoded = try codec.decoder.decode(Array43<String>.self, from: encoded)
        XCTAssertEqual(array43.wrappedValue, decoded.wrappedValue)
        
        func failingEncodingWithExtraElement() throws {
            array43.wrappedValue.append(UUID().uuidString)
            _ = try codec.encoder.encode(array43)
        }
        XCTAssertThrowsError(try failingEncodingWithExtraElement())
    }

    func testArray44() throws {
        let codec = ScaleCoder.default()
        var array44 = Array44(wrappedValue: (0..<44).map { _ in UUID().uuidString })
        let encoded = try codec.encoder.encode(array44)
        let decoded = try codec.decoder.decode(Array44<String>.self, from: encoded)
        XCTAssertEqual(array44.wrappedValue, decoded.wrappedValue)
        
        func failingEncodingWithExtraElement() throws {
            array44.wrappedValue.append(UUID().uuidString)
            _ = try codec.encoder.encode(array44)
        }
        XCTAssertThrowsError(try failingEncodingWithExtraElement())
    }

    func testArray45() throws {
        let codec = ScaleCoder.default()
        var array45 = Array45(wrappedValue: (0..<45).map { _ in UUID().uuidString })
        let encoded = try codec.encoder.encode(array45)
        let decoded = try codec.decoder.decode(Array45<String>.self, from: encoded)
        XCTAssertEqual(array45.wrappedValue, decoded.wrappedValue)
        
        func failingEncodingWithExtraElement() throws {
            array45.wrappedValue.append(UUID().uuidString)
            _ = try codec.encoder.encode(array45)
        }
        XCTAssertThrowsError(try failingEncodingWithExtraElement())
    }

    func testArray46() throws {
        let codec = ScaleCoder.default()
        var array46 = Array46(wrappedValue: (0..<46).map { _ in UUID().uuidString })
        let encoded = try codec.encoder.encode(array46)
        let decoded = try codec.decoder.decode(Array46<String>.self, from: encoded)
        XCTAssertEqual(array46.wrappedValue, decoded.wrappedValue)
        
        func failingEncodingWithExtraElement() throws {
            array46.wrappedValue.append(UUID().uuidString)
            _ = try codec.encoder.encode(array46)
        }
        XCTAssertThrowsError(try failingEncodingWithExtraElement())
    }

    func testArray47() throws {
        let codec = ScaleCoder.default()
        var array47 = Array47(wrappedValue: (0..<47).map { _ in UUID().uuidString })
        let encoded = try codec.encoder.encode(array47)
        let decoded = try codec.decoder.decode(Array47<String>.self, from: encoded)
        XCTAssertEqual(array47.wrappedValue, decoded.wrappedValue)
        
        func failingEncodingWithExtraElement() throws {
            array47.wrappedValue.append(UUID().uuidString)
            _ = try codec.encoder.encode(array47)
        }
        XCTAssertThrowsError(try failingEncodingWithExtraElement())
    }

    func testArray48() throws {
        let codec = ScaleCoder.default()
        var array48 = Array48(wrappedValue: (0..<48).map { _ in UUID().uuidString })
        let encoded = try codec.encoder.encode(array48)
        let decoded = try codec.decoder.decode(Array48<String>.self, from: encoded)
        XCTAssertEqual(array48.wrappedValue, decoded.wrappedValue)
        
        func failingEncodingWithExtraElement() throws {
            array48.wrappedValue.append(UUID().uuidString)
            _ = try codec.encoder.encode(array48)
        }
        XCTAssertThrowsError(try failingEncodingWithExtraElement())
    }

    func testArray49() throws {
        let codec = ScaleCoder.default()
        var array49 = Array49(wrappedValue: (0..<49).map { _ in UUID().uuidString })
        let encoded = try codec.encoder.encode(array49)
        let decoded = try codec.decoder.decode(Array49<String>.self, from: encoded)
        XCTAssertEqual(array49.wrappedValue, decoded.wrappedValue)
        
        func failingEncodingWithExtraElement() throws {
            array49.wrappedValue.append(UUID().uuidString)
            _ = try codec.encoder.encode(array49)
        }
        XCTAssertThrowsError(try failingEncodingWithExtraElement())
    }

    func testArray50() throws {
        let codec = ScaleCoder.default()
        var array50 = Array50(wrappedValue: (0..<50).map { _ in UUID().uuidString })
        let encoded = try codec.encoder.encode(array50)
        let decoded = try codec.decoder.decode(Array50<String>.self, from: encoded)
        XCTAssertEqual(array50.wrappedValue, decoded.wrappedValue)
        
        func failingEncodingWithExtraElement() throws {
            array50.wrappedValue.append(UUID().uuidString)
            _ = try codec.encoder.encode(array50)
        }
        XCTAssertThrowsError(try failingEncodingWithExtraElement())
    }

    func testArray51() throws {
        let codec = ScaleCoder.default()
        var array51 = Array51(wrappedValue: (0..<51).map { _ in UUID().uuidString })
        let encoded = try codec.encoder.encode(array51)
        let decoded = try codec.decoder.decode(Array51<String>.self, from: encoded)
        XCTAssertEqual(array51.wrappedValue, decoded.wrappedValue)
        
        func failingEncodingWithExtraElement() throws {
            array51.wrappedValue.append(UUID().uuidString)
            _ = try codec.encoder.encode(array51)
        }
        XCTAssertThrowsError(try failingEncodingWithExtraElement())
    }

    func testArray52() throws {
        let codec = ScaleCoder.default()
        var array52 = Array52(wrappedValue: (0..<52).map { _ in UUID().uuidString })
        let encoded = try codec.encoder.encode(array52)
        let decoded = try codec.decoder.decode(Array52<String>.self, from: encoded)
        XCTAssertEqual(array52.wrappedValue, decoded.wrappedValue)
        
        func failingEncodingWithExtraElement() throws {
            array52.wrappedValue.append(UUID().uuidString)
            _ = try codec.encoder.encode(array52)
        }
        XCTAssertThrowsError(try failingEncodingWithExtraElement())
    }

    func testArray53() throws {
        let codec = ScaleCoder.default()
        var array53 = Array53(wrappedValue: (0..<53).map { _ in UUID().uuidString })
        let encoded = try codec.encoder.encode(array53)
        let decoded = try codec.decoder.decode(Array53<String>.self, from: encoded)
        XCTAssertEqual(array53.wrappedValue, decoded.wrappedValue)
        
        func failingEncodingWithExtraElement() throws {
            array53.wrappedValue.append(UUID().uuidString)
            _ = try codec.encoder.encode(array53)
        }
        XCTAssertThrowsError(try failingEncodingWithExtraElement())
    }

    func testArray54() throws {
        let codec = ScaleCoder.default()
        var array54 = Array54(wrappedValue: (0..<54).map { _ in UUID().uuidString })
        let encoded = try codec.encoder.encode(array54)
        let decoded = try codec.decoder.decode(Array54<String>.self, from: encoded)
        XCTAssertEqual(array54.wrappedValue, decoded.wrappedValue)
        
        func failingEncodingWithExtraElement() throws {
            array54.wrappedValue.append(UUID().uuidString)
            _ = try codec.encoder.encode(array54)
        }
        XCTAssertThrowsError(try failingEncodingWithExtraElement())
    }

    func testArray55() throws {
        let codec = ScaleCoder.default()
        var array55 = Array55(wrappedValue: (0..<55).map { _ in UUID().uuidString })
        let encoded = try codec.encoder.encode(array55)
        let decoded = try codec.decoder.decode(Array55<String>.self, from: encoded)
        XCTAssertEqual(array55.wrappedValue, decoded.wrappedValue)
        
        func failingEncodingWithExtraElement() throws {
            array55.wrappedValue.append(UUID().uuidString)
            _ = try codec.encoder.encode(array55)
        }
        XCTAssertThrowsError(try failingEncodingWithExtraElement())
    }

    func testArray56() throws {
        let codec = ScaleCoder.default()
        var array56 = Array56(wrappedValue: (0..<56).map { _ in UUID().uuidString })
        let encoded = try codec.encoder.encode(array56)
        let decoded = try codec.decoder.decode(Array56<String>.self, from: encoded)
        XCTAssertEqual(array56.wrappedValue, decoded.wrappedValue)
        
        func failingEncodingWithExtraElement() throws {
            array56.wrappedValue.append(UUID().uuidString)
            _ = try codec.encoder.encode(array56)
        }
        XCTAssertThrowsError(try failingEncodingWithExtraElement())
    }

    func testArray57() throws {
        let codec = ScaleCoder.default()
        var array57 = Array57(wrappedValue: (0..<57).map { _ in UUID().uuidString })
        let encoded = try codec.encoder.encode(array57)
        let decoded = try codec.decoder.decode(Array57<String>.self, from: encoded)
        XCTAssertEqual(array57.wrappedValue, decoded.wrappedValue)
        
        func failingEncodingWithExtraElement() throws {
            array57.wrappedValue.append(UUID().uuidString)
            _ = try codec.encoder.encode(array57)
        }
        XCTAssertThrowsError(try failingEncodingWithExtraElement())
    }

    func testArray58() throws {
        let codec = ScaleCoder.default()
        var array58 = Array58(wrappedValue: (0..<58).map { _ in UUID().uuidString })
        let encoded = try codec.encoder.encode(array58)
        let decoded = try codec.decoder.decode(Array58<String>.self, from: encoded)
        XCTAssertEqual(array58.wrappedValue, decoded.wrappedValue)
        
        func failingEncodingWithExtraElement() throws {
            array58.wrappedValue.append(UUID().uuidString)
            _ = try codec.encoder.encode(array58)
        }
        XCTAssertThrowsError(try failingEncodingWithExtraElement())
    }

    func testArray59() throws {
        let codec = ScaleCoder.default()
        var array59 = Array59(wrappedValue: (0..<59).map { _ in UUID().uuidString })
        let encoded = try codec.encoder.encode(array59)
        let decoded = try codec.decoder.decode(Array59<String>.self, from: encoded)
        XCTAssertEqual(array59.wrappedValue, decoded.wrappedValue)
        
        func failingEncodingWithExtraElement() throws {
            array59.wrappedValue.append(UUID().uuidString)
            _ = try codec.encoder.encode(array59)
        }
        XCTAssertThrowsError(try failingEncodingWithExtraElement())
    }

    func testArray60() throws {
        let codec = ScaleCoder.default()
        var array60 = Array60(wrappedValue: (0..<60).map { _ in UUID().uuidString })
        let encoded = try codec.encoder.encode(array60)
        let decoded = try codec.decoder.decode(Array60<String>.self, from: encoded)
        XCTAssertEqual(array60.wrappedValue, decoded.wrappedValue)
        
        func failingEncodingWithExtraElement() throws {
            array60.wrappedValue.append(UUID().uuidString)
            _ = try codec.encoder.encode(array60)
        }
        XCTAssertThrowsError(try failingEncodingWithExtraElement())
    }

    func testArray61() throws {
        let codec = ScaleCoder.default()
        var array61 = Array61(wrappedValue: (0..<61).map { _ in UUID().uuidString })
        let encoded = try codec.encoder.encode(array61)
        let decoded = try codec.decoder.decode(Array61<String>.self, from: encoded)
        XCTAssertEqual(array61.wrappedValue, decoded.wrappedValue)
        
        func failingEncodingWithExtraElement() throws {
            array61.wrappedValue.append(UUID().uuidString)
            _ = try codec.encoder.encode(array61)
        }
        XCTAssertThrowsError(try failingEncodingWithExtraElement())
    }

    func testArray62() throws {
        let codec = ScaleCoder.default()
        var array62 = Array62(wrappedValue: (0..<62).map { _ in UUID().uuidString })
        let encoded = try codec.encoder.encode(array62)
        let decoded = try codec.decoder.decode(Array62<String>.self, from: encoded)
        XCTAssertEqual(array62.wrappedValue, decoded.wrappedValue)
        
        func failingEncodingWithExtraElement() throws {
            array62.wrappedValue.append(UUID().uuidString)
            _ = try codec.encoder.encode(array62)
        }
        XCTAssertThrowsError(try failingEncodingWithExtraElement())
    }

    func testArray63() throws {
        let codec = ScaleCoder.default()
        var array63 = Array63(wrappedValue: (0..<63).map { _ in UUID().uuidString })
        let encoded = try codec.encoder.encode(array63)
        let decoded = try codec.decoder.decode(Array63<String>.self, from: encoded)
        XCTAssertEqual(array63.wrappedValue, decoded.wrappedValue)
        
        func failingEncodingWithExtraElement() throws {
            array63.wrappedValue.append(UUID().uuidString)
            _ = try codec.encoder.encode(array63)
        }
        XCTAssertThrowsError(try failingEncodingWithExtraElement())
    }

    func testArray64() throws {
        let codec = ScaleCoder.default()
        var array64 = Array64(wrappedValue: (0..<64).map { _ in UUID().uuidString })
        let encoded = try codec.encoder.encode(array64)
        let decoded = try codec.decoder.decode(Array64<String>.self, from: encoded)
        XCTAssertEqual(array64.wrappedValue, decoded.wrappedValue)
        
        func failingEncodingWithExtraElement() throws {
            array64.wrappedValue.append(UUID().uuidString)
            _ = try codec.encoder.encode(array64)
        }
        XCTAssertThrowsError(try failingEncodingWithExtraElement())
    }

    func testArray65() throws {
        let codec = ScaleCoder.default()
        var array65 = Array65(wrappedValue: (0..<65).map { _ in UUID().uuidString })
        let encoded = try codec.encoder.encode(array65)
        let decoded = try codec.decoder.decode(Array65<String>.self, from: encoded)
        XCTAssertEqual(array65.wrappedValue, decoded.wrappedValue)
        
        func failingEncodingWithExtraElement() throws {
            array65.wrappedValue.append(UUID().uuidString)
            _ = try codec.encoder.encode(array65)
        }
        XCTAssertThrowsError(try failingEncodingWithExtraElement())
    }

    func testArray66() throws {
        let codec = ScaleCoder.default()
        var array66 = Array66(wrappedValue: (0..<66).map { _ in UUID().uuidString })
        let encoded = try codec.encoder.encode(array66)
        let decoded = try codec.decoder.decode(Array66<String>.self, from: encoded)
        XCTAssertEqual(array66.wrappedValue, decoded.wrappedValue)
        
        func failingEncodingWithExtraElement() throws {
            array66.wrappedValue.append(UUID().uuidString)
            _ = try codec.encoder.encode(array66)
        }
        XCTAssertThrowsError(try failingEncodingWithExtraElement())
    }

    func testArray67() throws {
        let codec = ScaleCoder.default()
        var array67 = Array67(wrappedValue: (0..<67).map { _ in UUID().uuidString })
        let encoded = try codec.encoder.encode(array67)
        let decoded = try codec.decoder.decode(Array67<String>.self, from: encoded)
        XCTAssertEqual(array67.wrappedValue, decoded.wrappedValue)
        
        func failingEncodingWithExtraElement() throws {
            array67.wrappedValue.append(UUID().uuidString)
            _ = try codec.encoder.encode(array67)
        }
        XCTAssertThrowsError(try failingEncodingWithExtraElement())
    }

    func testArray68() throws {
        let codec = ScaleCoder.default()
        var array68 = Array68(wrappedValue: (0..<68).map { _ in UUID().uuidString })
        let encoded = try codec.encoder.encode(array68)
        let decoded = try codec.decoder.decode(Array68<String>.self, from: encoded)
        XCTAssertEqual(array68.wrappedValue, decoded.wrappedValue)
        
        func failingEncodingWithExtraElement() throws {
            array68.wrappedValue.append(UUID().uuidString)
            _ = try codec.encoder.encode(array68)
        }
        XCTAssertThrowsError(try failingEncodingWithExtraElement())
    }

    func testArray69() throws {
        let codec = ScaleCoder.default()
        var array69 = Array69(wrappedValue: (0..<69).map { _ in UUID().uuidString })
        let encoded = try codec.encoder.encode(array69)
        let decoded = try codec.decoder.decode(Array69<String>.self, from: encoded)
        XCTAssertEqual(array69.wrappedValue, decoded.wrappedValue)
        
        func failingEncodingWithExtraElement() throws {
            array69.wrappedValue.append(UUID().uuidString)
            _ = try codec.encoder.encode(array69)
        }
        XCTAssertThrowsError(try failingEncodingWithExtraElement())
    }

    func testArray70() throws {
        let codec = ScaleCoder.default()
        var array70 = Array70(wrappedValue: (0..<70).map { _ in UUID().uuidString })
        let encoded = try codec.encoder.encode(array70)
        let decoded = try codec.decoder.decode(Array70<String>.self, from: encoded)
        XCTAssertEqual(array70.wrappedValue, decoded.wrappedValue)
        
        func failingEncodingWithExtraElement() throws {
            array70.wrappedValue.append(UUID().uuidString)
            _ = try codec.encoder.encode(array70)
        }
        XCTAssertThrowsError(try failingEncodingWithExtraElement())
    }

    func testArray71() throws {
        let codec = ScaleCoder.default()
        var array71 = Array71(wrappedValue: (0..<71).map { _ in UUID().uuidString })
        let encoded = try codec.encoder.encode(array71)
        let decoded = try codec.decoder.decode(Array71<String>.self, from: encoded)
        XCTAssertEqual(array71.wrappedValue, decoded.wrappedValue)
        
        func failingEncodingWithExtraElement() throws {
            array71.wrappedValue.append(UUID().uuidString)
            _ = try codec.encoder.encode(array71)
        }
        XCTAssertThrowsError(try failingEncodingWithExtraElement())
    }

    func testArray72() throws {
        let codec = ScaleCoder.default()
        var array72 = Array72(wrappedValue: (0..<72).map { _ in UUID().uuidString })
        let encoded = try codec.encoder.encode(array72)
        let decoded = try codec.decoder.decode(Array72<String>.self, from: encoded)
        XCTAssertEqual(array72.wrappedValue, decoded.wrappedValue)
        
        func failingEncodingWithExtraElement() throws {
            array72.wrappedValue.append(UUID().uuidString)
            _ = try codec.encoder.encode(array72)
        }
        XCTAssertThrowsError(try failingEncodingWithExtraElement())
    }

    func testArray73() throws {
        let codec = ScaleCoder.default()
        var array73 = Array73(wrappedValue: (0..<73).map { _ in UUID().uuidString })
        let encoded = try codec.encoder.encode(array73)
        let decoded = try codec.decoder.decode(Array73<String>.self, from: encoded)
        XCTAssertEqual(array73.wrappedValue, decoded.wrappedValue)
        
        func failingEncodingWithExtraElement() throws {
            array73.wrappedValue.append(UUID().uuidString)
            _ = try codec.encoder.encode(array73)
        }
        XCTAssertThrowsError(try failingEncodingWithExtraElement())
    }

    func testArray74() throws {
        let codec = ScaleCoder.default()
        var array74 = Array74(wrappedValue: (0..<74).map { _ in UUID().uuidString })
        let encoded = try codec.encoder.encode(array74)
        let decoded = try codec.decoder.decode(Array74<String>.self, from: encoded)
        XCTAssertEqual(array74.wrappedValue, decoded.wrappedValue)
        
        func failingEncodingWithExtraElement() throws {
            array74.wrappedValue.append(UUID().uuidString)
            _ = try codec.encoder.encode(array74)
        }
        XCTAssertThrowsError(try failingEncodingWithExtraElement())
    }

    func testArray75() throws {
        let codec = ScaleCoder.default()
        var array75 = Array75(wrappedValue: (0..<75).map { _ in UUID().uuidString })
        let encoded = try codec.encoder.encode(array75)
        let decoded = try codec.decoder.decode(Array75<String>.self, from: encoded)
        XCTAssertEqual(array75.wrappedValue, decoded.wrappedValue)
        
        func failingEncodingWithExtraElement() throws {
            array75.wrappedValue.append(UUID().uuidString)
            _ = try codec.encoder.encode(array75)
        }
        XCTAssertThrowsError(try failingEncodingWithExtraElement())
    }

    func testArray76() throws {
        let codec = ScaleCoder.default()
        var array76 = Array76(wrappedValue: (0..<76).map { _ in UUID().uuidString })
        let encoded = try codec.encoder.encode(array76)
        let decoded = try codec.decoder.decode(Array76<String>.self, from: encoded)
        XCTAssertEqual(array76.wrappedValue, decoded.wrappedValue)
        
        func failingEncodingWithExtraElement() throws {
            array76.wrappedValue.append(UUID().uuidString)
            _ = try codec.encoder.encode(array76)
        }
        XCTAssertThrowsError(try failingEncodingWithExtraElement())
    }

    func testArray77() throws {
        let codec = ScaleCoder.default()
        var array77 = Array77(wrappedValue: (0..<77).map { _ in UUID().uuidString })
        let encoded = try codec.encoder.encode(array77)
        let decoded = try codec.decoder.decode(Array77<String>.self, from: encoded)
        XCTAssertEqual(array77.wrappedValue, decoded.wrappedValue)
        
        func failingEncodingWithExtraElement() throws {
            array77.wrappedValue.append(UUID().uuidString)
            _ = try codec.encoder.encode(array77)
        }
        XCTAssertThrowsError(try failingEncodingWithExtraElement())
    }

    func testArray78() throws {
        let codec = ScaleCoder.default()
        var array78 = Array78(wrappedValue: (0..<78).map { _ in UUID().uuidString })
        let encoded = try codec.encoder.encode(array78)
        let decoded = try codec.decoder.decode(Array78<String>.self, from: encoded)
        XCTAssertEqual(array78.wrappedValue, decoded.wrappedValue)
        
        func failingEncodingWithExtraElement() throws {
            array78.wrappedValue.append(UUID().uuidString)
            _ = try codec.encoder.encode(array78)
        }
        XCTAssertThrowsError(try failingEncodingWithExtraElement())
    }

    func testArray79() throws {
        let codec = ScaleCoder.default()
        var array79 = Array79(wrappedValue: (0..<79).map { _ in UUID().uuidString })
        let encoded = try codec.encoder.encode(array79)
        let decoded = try codec.decoder.decode(Array79<String>.self, from: encoded)
        XCTAssertEqual(array79.wrappedValue, decoded.wrappedValue)
        
        func failingEncodingWithExtraElement() throws {
            array79.wrappedValue.append(UUID().uuidString)
            _ = try codec.encoder.encode(array79)
        }
        XCTAssertThrowsError(try failingEncodingWithExtraElement())
    }

    func testArray80() throws {
        let codec = ScaleCoder.default()
        var array80 = Array80(wrappedValue: (0..<80).map { _ in UUID().uuidString })
        let encoded = try codec.encoder.encode(array80)
        let decoded = try codec.decoder.decode(Array80<String>.self, from: encoded)
        XCTAssertEqual(array80.wrappedValue, decoded.wrappedValue)
        
        func failingEncodingWithExtraElement() throws {
            array80.wrappedValue.append(UUID().uuidString)
            _ = try codec.encoder.encode(array80)
        }
        XCTAssertThrowsError(try failingEncodingWithExtraElement())
    }

    func testArray81() throws {
        let codec = ScaleCoder.default()
        var array81 = Array81(wrappedValue: (0..<81).map { _ in UUID().uuidString })
        let encoded = try codec.encoder.encode(array81)
        let decoded = try codec.decoder.decode(Array81<String>.self, from: encoded)
        XCTAssertEqual(array81.wrappedValue, decoded.wrappedValue)
        
        func failingEncodingWithExtraElement() throws {
            array81.wrappedValue.append(UUID().uuidString)
            _ = try codec.encoder.encode(array81)
        }
        XCTAssertThrowsError(try failingEncodingWithExtraElement())
    }

    func testArray82() throws {
        let codec = ScaleCoder.default()
        var array82 = Array82(wrappedValue: (0..<82).map { _ in UUID().uuidString })
        let encoded = try codec.encoder.encode(array82)
        let decoded = try codec.decoder.decode(Array82<String>.self, from: encoded)
        XCTAssertEqual(array82.wrappedValue, decoded.wrappedValue)
        
        func failingEncodingWithExtraElement() throws {
            array82.wrappedValue.append(UUID().uuidString)
            _ = try codec.encoder.encode(array82)
        }
        XCTAssertThrowsError(try failingEncodingWithExtraElement())
    }

    func testArray83() throws {
        let codec = ScaleCoder.default()
        var array83 = Array83(wrappedValue: (0..<83).map { _ in UUID().uuidString })
        let encoded = try codec.encoder.encode(array83)
        let decoded = try codec.decoder.decode(Array83<String>.self, from: encoded)
        XCTAssertEqual(array83.wrappedValue, decoded.wrappedValue)
        
        func failingEncodingWithExtraElement() throws {
            array83.wrappedValue.append(UUID().uuidString)
            _ = try codec.encoder.encode(array83)
        }
        XCTAssertThrowsError(try failingEncodingWithExtraElement())
    }

    func testArray84() throws {
        let codec = ScaleCoder.default()
        var array84 = Array84(wrappedValue: (0..<84).map { _ in UUID().uuidString })
        let encoded = try codec.encoder.encode(array84)
        let decoded = try codec.decoder.decode(Array84<String>.self, from: encoded)
        XCTAssertEqual(array84.wrappedValue, decoded.wrappedValue)
        
        func failingEncodingWithExtraElement() throws {
            array84.wrappedValue.append(UUID().uuidString)
            _ = try codec.encoder.encode(array84)
        }
        XCTAssertThrowsError(try failingEncodingWithExtraElement())
    }

    func testArray85() throws {
        let codec = ScaleCoder.default()
        var array85 = Array85(wrappedValue: (0..<85).map { _ in UUID().uuidString })
        let encoded = try codec.encoder.encode(array85)
        let decoded = try codec.decoder.decode(Array85<String>.self, from: encoded)
        XCTAssertEqual(array85.wrappedValue, decoded.wrappedValue)
        
        func failingEncodingWithExtraElement() throws {
            array85.wrappedValue.append(UUID().uuidString)
            _ = try codec.encoder.encode(array85)
        }
        XCTAssertThrowsError(try failingEncodingWithExtraElement())
    }

    func testArray86() throws {
        let codec = ScaleCoder.default()
        var array86 = Array86(wrappedValue: (0..<86).map { _ in UUID().uuidString })
        let encoded = try codec.encoder.encode(array86)
        let decoded = try codec.decoder.decode(Array86<String>.self, from: encoded)
        XCTAssertEqual(array86.wrappedValue, decoded.wrappedValue)
        
        func failingEncodingWithExtraElement() throws {
            array86.wrappedValue.append(UUID().uuidString)
            _ = try codec.encoder.encode(array86)
        }
        XCTAssertThrowsError(try failingEncodingWithExtraElement())
    }

    func testArray87() throws {
        let codec = ScaleCoder.default()
        var array87 = Array87(wrappedValue: (0..<87).map { _ in UUID().uuidString })
        let encoded = try codec.encoder.encode(array87)
        let decoded = try codec.decoder.decode(Array87<String>.self, from: encoded)
        XCTAssertEqual(array87.wrappedValue, decoded.wrappedValue)
        
        func failingEncodingWithExtraElement() throws {
            array87.wrappedValue.append(UUID().uuidString)
            _ = try codec.encoder.encode(array87)
        }
        XCTAssertThrowsError(try failingEncodingWithExtraElement())
    }

    func testArray88() throws {
        let codec = ScaleCoder.default()
        var array88 = Array88(wrappedValue: (0..<88).map { _ in UUID().uuidString })
        let encoded = try codec.encoder.encode(array88)
        let decoded = try codec.decoder.decode(Array88<String>.self, from: encoded)
        XCTAssertEqual(array88.wrappedValue, decoded.wrappedValue)
        
        func failingEncodingWithExtraElement() throws {
            array88.wrappedValue.append(UUID().uuidString)
            _ = try codec.encoder.encode(array88)
        }
        XCTAssertThrowsError(try failingEncodingWithExtraElement())
    }

    func testArray89() throws {
        let codec = ScaleCoder.default()
        var array89 = Array89(wrappedValue: (0..<89).map { _ in UUID().uuidString })
        let encoded = try codec.encoder.encode(array89)
        let decoded = try codec.decoder.decode(Array89<String>.self, from: encoded)
        XCTAssertEqual(array89.wrappedValue, decoded.wrappedValue)
        
        func failingEncodingWithExtraElement() throws {
            array89.wrappedValue.append(UUID().uuidString)
            _ = try codec.encoder.encode(array89)
        }
        XCTAssertThrowsError(try failingEncodingWithExtraElement())
    }

    func testArray90() throws {
        let codec = ScaleCoder.default()
        var array90 = Array90(wrappedValue: (0..<90).map { _ in UUID().uuidString })
        let encoded = try codec.encoder.encode(array90)
        let decoded = try codec.decoder.decode(Array90<String>.self, from: encoded)
        XCTAssertEqual(array90.wrappedValue, decoded.wrappedValue)
        
        func failingEncodingWithExtraElement() throws {
            array90.wrappedValue.append(UUID().uuidString)
            _ = try codec.encoder.encode(array90)
        }
        XCTAssertThrowsError(try failingEncodingWithExtraElement())
    }

    func testArray91() throws {
        let codec = ScaleCoder.default()
        var array91 = Array91(wrappedValue: (0..<91).map { _ in UUID().uuidString })
        let encoded = try codec.encoder.encode(array91)
        let decoded = try codec.decoder.decode(Array91<String>.self, from: encoded)
        XCTAssertEqual(array91.wrappedValue, decoded.wrappedValue)
        
        func failingEncodingWithExtraElement() throws {
            array91.wrappedValue.append(UUID().uuidString)
            _ = try codec.encoder.encode(array91)
        }
        XCTAssertThrowsError(try failingEncodingWithExtraElement())
    }

    func testArray92() throws {
        let codec = ScaleCoder.default()
        var array92 = Array92(wrappedValue: (0..<92).map { _ in UUID().uuidString })
        let encoded = try codec.encoder.encode(array92)
        let decoded = try codec.decoder.decode(Array92<String>.self, from: encoded)
        XCTAssertEqual(array92.wrappedValue, decoded.wrappedValue)
        
        func failingEncodingWithExtraElement() throws {
            array92.wrappedValue.append(UUID().uuidString)
            _ = try codec.encoder.encode(array92)
        }
        XCTAssertThrowsError(try failingEncodingWithExtraElement())
    }

    func testArray93() throws {
        let codec = ScaleCoder.default()
        var array93 = Array93(wrappedValue: (0..<93).map { _ in UUID().uuidString })
        let encoded = try codec.encoder.encode(array93)
        let decoded = try codec.decoder.decode(Array93<String>.self, from: encoded)
        XCTAssertEqual(array93.wrappedValue, decoded.wrappedValue)
        
        func failingEncodingWithExtraElement() throws {
            array93.wrappedValue.append(UUID().uuidString)
            _ = try codec.encoder.encode(array93)
        }
        XCTAssertThrowsError(try failingEncodingWithExtraElement())
    }

    func testArray94() throws {
        let codec = ScaleCoder.default()
        var array94 = Array94(wrappedValue: (0..<94).map { _ in UUID().uuidString })
        let encoded = try codec.encoder.encode(array94)
        let decoded = try codec.decoder.decode(Array94<String>.self, from: encoded)
        XCTAssertEqual(array94.wrappedValue, decoded.wrappedValue)
        
        func failingEncodingWithExtraElement() throws {
            array94.wrappedValue.append(UUID().uuidString)
            _ = try codec.encoder.encode(array94)
        }
        XCTAssertThrowsError(try failingEncodingWithExtraElement())
    }

    func testArray95() throws {
        let codec = ScaleCoder.default()
        var array95 = Array95(wrappedValue: (0..<95).map { _ in UUID().uuidString })
        let encoded = try codec.encoder.encode(array95)
        let decoded = try codec.decoder.decode(Array95<String>.self, from: encoded)
        XCTAssertEqual(array95.wrappedValue, decoded.wrappedValue)
        
        func failingEncodingWithExtraElement() throws {
            array95.wrappedValue.append(UUID().uuidString)
            _ = try codec.encoder.encode(array95)
        }
        XCTAssertThrowsError(try failingEncodingWithExtraElement())
    }

    func testArray96() throws {
        let codec = ScaleCoder.default()
        var array96 = Array96(wrappedValue: (0..<96).map { _ in UUID().uuidString })
        let encoded = try codec.encoder.encode(array96)
        let decoded = try codec.decoder.decode(Array96<String>.self, from: encoded)
        XCTAssertEqual(array96.wrappedValue, decoded.wrappedValue)
        
        func failingEncodingWithExtraElement() throws {
            array96.wrappedValue.append(UUID().uuidString)
            _ = try codec.encoder.encode(array96)
        }
        XCTAssertThrowsError(try failingEncodingWithExtraElement())
    }

    func testArray97() throws {
        let codec = ScaleCoder.default()
        var array97 = Array97(wrappedValue: (0..<97).map { _ in UUID().uuidString })
        let encoded = try codec.encoder.encode(array97)
        let decoded = try codec.decoder.decode(Array97<String>.self, from: encoded)
        XCTAssertEqual(array97.wrappedValue, decoded.wrappedValue)
        
        func failingEncodingWithExtraElement() throws {
            array97.wrappedValue.append(UUID().uuidString)
            _ = try codec.encoder.encode(array97)
        }
        XCTAssertThrowsError(try failingEncodingWithExtraElement())
    }

    func testArray98() throws {
        let codec = ScaleCoder.default()
        var array98 = Array98(wrappedValue: (0..<98).map { _ in UUID().uuidString })
        let encoded = try codec.encoder.encode(array98)
        let decoded = try codec.decoder.decode(Array98<String>.self, from: encoded)
        XCTAssertEqual(array98.wrappedValue, decoded.wrappedValue)
        
        func failingEncodingWithExtraElement() throws {
            array98.wrappedValue.append(UUID().uuidString)
            _ = try codec.encoder.encode(array98)
        }
        XCTAssertThrowsError(try failingEncodingWithExtraElement())
    }

    func testArray99() throws {
        let codec = ScaleCoder.default()
        var array99 = Array99(wrappedValue: (0..<99).map { _ in UUID().uuidString })
        let encoded = try codec.encoder.encode(array99)
        let decoded = try codec.decoder.decode(Array99<String>.self, from: encoded)
        XCTAssertEqual(array99.wrappedValue, decoded.wrappedValue)
        
        func failingEncodingWithExtraElement() throws {
            array99.wrappedValue.append(UUID().uuidString)
            _ = try codec.encoder.encode(array99)
        }
        XCTAssertThrowsError(try failingEncodingWithExtraElement())
    }

    func testArray100() throws {
        let codec = ScaleCoder.default()
        var array100 = Array100(wrappedValue: (0..<100).map { _ in UUID().uuidString })
        let encoded = try codec.encoder.encode(array100)
        let decoded = try codec.decoder.decode(Array100<String>.self, from: encoded)
        XCTAssertEqual(array100.wrappedValue, decoded.wrappedValue)
        
        func failingEncodingWithExtraElement() throws {
            array100.wrappedValue.append(UUID().uuidString)
            _ = try codec.encoder.encode(array100)
        }
        XCTAssertThrowsError(try failingEncodingWithExtraElement())
    }

    func testArray101() throws {
        let codec = ScaleCoder.default()
        var array101 = Array101(wrappedValue: (0..<101).map { _ in UUID().uuidString })
        let encoded = try codec.encoder.encode(array101)
        let decoded = try codec.decoder.decode(Array101<String>.self, from: encoded)
        XCTAssertEqual(array101.wrappedValue, decoded.wrappedValue)
        
        func failingEncodingWithExtraElement() throws {
            array101.wrappedValue.append(UUID().uuidString)
            _ = try codec.encoder.encode(array101)
        }
        XCTAssertThrowsError(try failingEncodingWithExtraElement())
    }

    func testArray102() throws {
        let codec = ScaleCoder.default()
        var array102 = Array102(wrappedValue: (0..<102).map { _ in UUID().uuidString })
        let encoded = try codec.encoder.encode(array102)
        let decoded = try codec.decoder.decode(Array102<String>.self, from: encoded)
        XCTAssertEqual(array102.wrappedValue, decoded.wrappedValue)
        
        func failingEncodingWithExtraElement() throws {
            array102.wrappedValue.append(UUID().uuidString)
            _ = try codec.encoder.encode(array102)
        }
        XCTAssertThrowsError(try failingEncodingWithExtraElement())
    }

    func testArray103() throws {
        let codec = ScaleCoder.default()
        var array103 = Array103(wrappedValue: (0..<103).map { _ in UUID().uuidString })
        let encoded = try codec.encoder.encode(array103)
        let decoded = try codec.decoder.decode(Array103<String>.self, from: encoded)
        XCTAssertEqual(array103.wrappedValue, decoded.wrappedValue)
        
        func failingEncodingWithExtraElement() throws {
            array103.wrappedValue.append(UUID().uuidString)
            _ = try codec.encoder.encode(array103)
        }
        XCTAssertThrowsError(try failingEncodingWithExtraElement())
    }

    func testArray104() throws {
        let codec = ScaleCoder.default()
        var array104 = Array104(wrappedValue: (0..<104).map { _ in UUID().uuidString })
        let encoded = try codec.encoder.encode(array104)
        let decoded = try codec.decoder.decode(Array104<String>.self, from: encoded)
        XCTAssertEqual(array104.wrappedValue, decoded.wrappedValue)
        
        func failingEncodingWithExtraElement() throws {
            array104.wrappedValue.append(UUID().uuidString)
            _ = try codec.encoder.encode(array104)
        }
        XCTAssertThrowsError(try failingEncodingWithExtraElement())
    }

    func testArray105() throws {
        let codec = ScaleCoder.default()
        var array105 = Array105(wrappedValue: (0..<105).map { _ in UUID().uuidString })
        let encoded = try codec.encoder.encode(array105)
        let decoded = try codec.decoder.decode(Array105<String>.self, from: encoded)
        XCTAssertEqual(array105.wrappedValue, decoded.wrappedValue)
        
        func failingEncodingWithExtraElement() throws {
            array105.wrappedValue.append(UUID().uuidString)
            _ = try codec.encoder.encode(array105)
        }
        XCTAssertThrowsError(try failingEncodingWithExtraElement())
    }

    func testArray106() throws {
        let codec = ScaleCoder.default()
        var array106 = Array106(wrappedValue: (0..<106).map { _ in UUID().uuidString })
        let encoded = try codec.encoder.encode(array106)
        let decoded = try codec.decoder.decode(Array106<String>.self, from: encoded)
        XCTAssertEqual(array106.wrappedValue, decoded.wrappedValue)
        
        func failingEncodingWithExtraElement() throws {
            array106.wrappedValue.append(UUID().uuidString)
            _ = try codec.encoder.encode(array106)
        }
        XCTAssertThrowsError(try failingEncodingWithExtraElement())
    }

    func testArray107() throws {
        let codec = ScaleCoder.default()
        var array107 = Array107(wrappedValue: (0..<107).map { _ in UUID().uuidString })
        let encoded = try codec.encoder.encode(array107)
        let decoded = try codec.decoder.decode(Array107<String>.self, from: encoded)
        XCTAssertEqual(array107.wrappedValue, decoded.wrappedValue)
        
        func failingEncodingWithExtraElement() throws {
            array107.wrappedValue.append(UUID().uuidString)
            _ = try codec.encoder.encode(array107)
        }
        XCTAssertThrowsError(try failingEncodingWithExtraElement())
    }

    func testArray108() throws {
        let codec = ScaleCoder.default()
        var array108 = Array108(wrappedValue: (0..<108).map { _ in UUID().uuidString })
        let encoded = try codec.encoder.encode(array108)
        let decoded = try codec.decoder.decode(Array108<String>.self, from: encoded)
        XCTAssertEqual(array108.wrappedValue, decoded.wrappedValue)
        
        func failingEncodingWithExtraElement() throws {
            array108.wrappedValue.append(UUID().uuidString)
            _ = try codec.encoder.encode(array108)
        }
        XCTAssertThrowsError(try failingEncodingWithExtraElement())
    }

    func testArray109() throws {
        let codec = ScaleCoder.default()
        var array109 = Array109(wrappedValue: (0..<109).map { _ in UUID().uuidString })
        let encoded = try codec.encoder.encode(array109)
        let decoded = try codec.decoder.decode(Array109<String>.self, from: encoded)
        XCTAssertEqual(array109.wrappedValue, decoded.wrappedValue)
        
        func failingEncodingWithExtraElement() throws {
            array109.wrappedValue.append(UUID().uuidString)
            _ = try codec.encoder.encode(array109)
        }
        XCTAssertThrowsError(try failingEncodingWithExtraElement())
    }

    func testArray110() throws {
        let codec = ScaleCoder.default()
        var array110 = Array110(wrappedValue: (0..<110).map { _ in UUID().uuidString })
        let encoded = try codec.encoder.encode(array110)
        let decoded = try codec.decoder.decode(Array110<String>.self, from: encoded)
        XCTAssertEqual(array110.wrappedValue, decoded.wrappedValue)
        
        func failingEncodingWithExtraElement() throws {
            array110.wrappedValue.append(UUID().uuidString)
            _ = try codec.encoder.encode(array110)
        }
        XCTAssertThrowsError(try failingEncodingWithExtraElement())
    }

    func testArray111() throws {
        let codec = ScaleCoder.default()
        var array111 = Array111(wrappedValue: (0..<111).map { _ in UUID().uuidString })
        let encoded = try codec.encoder.encode(array111)
        let decoded = try codec.decoder.decode(Array111<String>.self, from: encoded)
        XCTAssertEqual(array111.wrappedValue, decoded.wrappedValue)
        
        func failingEncodingWithExtraElement() throws {
            array111.wrappedValue.append(UUID().uuidString)
            _ = try codec.encoder.encode(array111)
        }
        XCTAssertThrowsError(try failingEncodingWithExtraElement())
    }

    func testArray112() throws {
        let codec = ScaleCoder.default()
        var array112 = Array112(wrappedValue: (0..<112).map { _ in UUID().uuidString })
        let encoded = try codec.encoder.encode(array112)
        let decoded = try codec.decoder.decode(Array112<String>.self, from: encoded)
        XCTAssertEqual(array112.wrappedValue, decoded.wrappedValue)
        
        func failingEncodingWithExtraElement() throws {
            array112.wrappedValue.append(UUID().uuidString)
            _ = try codec.encoder.encode(array112)
        }
        XCTAssertThrowsError(try failingEncodingWithExtraElement())
    }

    func testArray113() throws {
        let codec = ScaleCoder.default()
        var array113 = Array113(wrappedValue: (0..<113).map { _ in UUID().uuidString })
        let encoded = try codec.encoder.encode(array113)
        let decoded = try codec.decoder.decode(Array113<String>.self, from: encoded)
        XCTAssertEqual(array113.wrappedValue, decoded.wrappedValue)
        
        func failingEncodingWithExtraElement() throws {
            array113.wrappedValue.append(UUID().uuidString)
            _ = try codec.encoder.encode(array113)
        }
        XCTAssertThrowsError(try failingEncodingWithExtraElement())
    }

    func testArray114() throws {
        let codec = ScaleCoder.default()
        var array114 = Array114(wrappedValue: (0..<114).map { _ in UUID().uuidString })
        let encoded = try codec.encoder.encode(array114)
        let decoded = try codec.decoder.decode(Array114<String>.self, from: encoded)
        XCTAssertEqual(array114.wrappedValue, decoded.wrappedValue)
        
        func failingEncodingWithExtraElement() throws {
            array114.wrappedValue.append(UUID().uuidString)
            _ = try codec.encoder.encode(array114)
        }
        XCTAssertThrowsError(try failingEncodingWithExtraElement())
    }

    func testArray115() throws {
        let codec = ScaleCoder.default()
        var array115 = Array115(wrappedValue: (0..<115).map { _ in UUID().uuidString })
        let encoded = try codec.encoder.encode(array115)
        let decoded = try codec.decoder.decode(Array115<String>.self, from: encoded)
        XCTAssertEqual(array115.wrappedValue, decoded.wrappedValue)
        
        func failingEncodingWithExtraElement() throws {
            array115.wrappedValue.append(UUID().uuidString)
            _ = try codec.encoder.encode(array115)
        }
        XCTAssertThrowsError(try failingEncodingWithExtraElement())
    }

    func testArray116() throws {
        let codec = ScaleCoder.default()
        var array116 = Array116(wrappedValue: (0..<116).map { _ in UUID().uuidString })
        let encoded = try codec.encoder.encode(array116)
        let decoded = try codec.decoder.decode(Array116<String>.self, from: encoded)
        XCTAssertEqual(array116.wrappedValue, decoded.wrappedValue)
        
        func failingEncodingWithExtraElement() throws {
            array116.wrappedValue.append(UUID().uuidString)
            _ = try codec.encoder.encode(array116)
        }
        XCTAssertThrowsError(try failingEncodingWithExtraElement())
    }

    func testArray117() throws {
        let codec = ScaleCoder.default()
        var array117 = Array117(wrappedValue: (0..<117).map { _ in UUID().uuidString })
        let encoded = try codec.encoder.encode(array117)
        let decoded = try codec.decoder.decode(Array117<String>.self, from: encoded)
        XCTAssertEqual(array117.wrappedValue, decoded.wrappedValue)
        
        func failingEncodingWithExtraElement() throws {
            array117.wrappedValue.append(UUID().uuidString)
            _ = try codec.encoder.encode(array117)
        }
        XCTAssertThrowsError(try failingEncodingWithExtraElement())
    }

    func testArray118() throws {
        let codec = ScaleCoder.default()
        var array118 = Array118(wrappedValue: (0..<118).map { _ in UUID().uuidString })
        let encoded = try codec.encoder.encode(array118)
        let decoded = try codec.decoder.decode(Array118<String>.self, from: encoded)
        XCTAssertEqual(array118.wrappedValue, decoded.wrappedValue)
        
        func failingEncodingWithExtraElement() throws {
            array118.wrappedValue.append(UUID().uuidString)
            _ = try codec.encoder.encode(array118)
        }
        XCTAssertThrowsError(try failingEncodingWithExtraElement())
    }

    func testArray119() throws {
        let codec = ScaleCoder.default()
        var array119 = Array119(wrappedValue: (0..<119).map { _ in UUID().uuidString })
        let encoded = try codec.encoder.encode(array119)
        let decoded = try codec.decoder.decode(Array119<String>.self, from: encoded)
        XCTAssertEqual(array119.wrappedValue, decoded.wrappedValue)
        
        func failingEncodingWithExtraElement() throws {
            array119.wrappedValue.append(UUID().uuidString)
            _ = try codec.encoder.encode(array119)
        }
        XCTAssertThrowsError(try failingEncodingWithExtraElement())
    }

    func testArray120() throws {
        let codec = ScaleCoder.default()
        var array120 = Array120(wrappedValue: (0..<120).map { _ in UUID().uuidString })
        let encoded = try codec.encoder.encode(array120)
        let decoded = try codec.decoder.decode(Array120<String>.self, from: encoded)
        XCTAssertEqual(array120.wrappedValue, decoded.wrappedValue)
        
        func failingEncodingWithExtraElement() throws {
            array120.wrappedValue.append(UUID().uuidString)
            _ = try codec.encoder.encode(array120)
        }
        XCTAssertThrowsError(try failingEncodingWithExtraElement())
    }

    func testArray121() throws {
        let codec = ScaleCoder.default()
        var array121 = Array121(wrappedValue: (0..<121).map { _ in UUID().uuidString })
        let encoded = try codec.encoder.encode(array121)
        let decoded = try codec.decoder.decode(Array121<String>.self, from: encoded)
        XCTAssertEqual(array121.wrappedValue, decoded.wrappedValue)
        
        func failingEncodingWithExtraElement() throws {
            array121.wrappedValue.append(UUID().uuidString)
            _ = try codec.encoder.encode(array121)
        }
        XCTAssertThrowsError(try failingEncodingWithExtraElement())
    }

    func testArray122() throws {
        let codec = ScaleCoder.default()
        var array122 = Array122(wrappedValue: (0..<122).map { _ in UUID().uuidString })
        let encoded = try codec.encoder.encode(array122)
        let decoded = try codec.decoder.decode(Array122<String>.self, from: encoded)
        XCTAssertEqual(array122.wrappedValue, decoded.wrappedValue)
        
        func failingEncodingWithExtraElement() throws {
            array122.wrappedValue.append(UUID().uuidString)
            _ = try codec.encoder.encode(array122)
        }
        XCTAssertThrowsError(try failingEncodingWithExtraElement())
    }

    func testArray123() throws {
        let codec = ScaleCoder.default()
        var array123 = Array123(wrappedValue: (0..<123).map { _ in UUID().uuidString })
        let encoded = try codec.encoder.encode(array123)
        let decoded = try codec.decoder.decode(Array123<String>.self, from: encoded)
        XCTAssertEqual(array123.wrappedValue, decoded.wrappedValue)
        
        func failingEncodingWithExtraElement() throws {
            array123.wrappedValue.append(UUID().uuidString)
            _ = try codec.encoder.encode(array123)
        }
        XCTAssertThrowsError(try failingEncodingWithExtraElement())
    }

    func testArray124() throws {
        let codec = ScaleCoder.default()
        var array124 = Array124(wrappedValue: (0..<124).map { _ in UUID().uuidString })
        let encoded = try codec.encoder.encode(array124)
        let decoded = try codec.decoder.decode(Array124<String>.self, from: encoded)
        XCTAssertEqual(array124.wrappedValue, decoded.wrappedValue)
        
        func failingEncodingWithExtraElement() throws {
            array124.wrappedValue.append(UUID().uuidString)
            _ = try codec.encoder.encode(array124)
        }
        XCTAssertThrowsError(try failingEncodingWithExtraElement())
    }

    func testArray125() throws {
        let codec = ScaleCoder.default()
        var array125 = Array125(wrappedValue: (0..<125).map { _ in UUID().uuidString })
        let encoded = try codec.encoder.encode(array125)
        let decoded = try codec.decoder.decode(Array125<String>.self, from: encoded)
        XCTAssertEqual(array125.wrappedValue, decoded.wrappedValue)
        
        func failingEncodingWithExtraElement() throws {
            array125.wrappedValue.append(UUID().uuidString)
            _ = try codec.encoder.encode(array125)
        }
        XCTAssertThrowsError(try failingEncodingWithExtraElement())
    }

    func testArray126() throws {
        let codec = ScaleCoder.default()
        var array126 = Array126(wrappedValue: (0..<126).map { _ in UUID().uuidString })
        let encoded = try codec.encoder.encode(array126)
        let decoded = try codec.decoder.decode(Array126<String>.self, from: encoded)
        XCTAssertEqual(array126.wrappedValue, decoded.wrappedValue)
        
        func failingEncodingWithExtraElement() throws {
            array126.wrappedValue.append(UUID().uuidString)
            _ = try codec.encoder.encode(array126)
        }
        XCTAssertThrowsError(try failingEncodingWithExtraElement())
    }

    func testArray127() throws {
        let codec = ScaleCoder.default()
        var array127 = Array127(wrappedValue: (0..<127).map { _ in UUID().uuidString })
        let encoded = try codec.encoder.encode(array127)
        let decoded = try codec.decoder.decode(Array127<String>.self, from: encoded)
        XCTAssertEqual(array127.wrappedValue, decoded.wrappedValue)
        
        func failingEncodingWithExtraElement() throws {
            array127.wrappedValue.append(UUID().uuidString)
            _ = try codec.encoder.encode(array127)
        }
        XCTAssertThrowsError(try failingEncodingWithExtraElement())
    }

    func testArray128() throws {
        let codec = ScaleCoder.default()
        var array128 = Array128(wrappedValue: (0..<128).map { _ in UUID().uuidString })
        let encoded = try codec.encoder.encode(array128)
        let decoded = try codec.decoder.decode(Array128<String>.self, from: encoded)
        XCTAssertEqual(array128.wrappedValue, decoded.wrappedValue)
        
        func failingEncodingWithExtraElement() throws {
            array128.wrappedValue.append(UUID().uuidString)
            _ = try codec.encoder.encode(array128)
        }
        XCTAssertThrowsError(try failingEncodingWithExtraElement())
    }

    func testArray129() throws {
        let codec = ScaleCoder.default()
        var array129 = Array129(wrappedValue: (0..<129).map { _ in UUID().uuidString })
        let encoded = try codec.encoder.encode(array129)
        let decoded = try codec.decoder.decode(Array129<String>.self, from: encoded)
        XCTAssertEqual(array129.wrappedValue, decoded.wrappedValue)
        
        func failingEncodingWithExtraElement() throws {
            array129.wrappedValue.append(UUID().uuidString)
            _ = try codec.encoder.encode(array129)
        }
        XCTAssertThrowsError(try failingEncodingWithExtraElement())
    }

    func testArray130() throws {
        let codec = ScaleCoder.default()
        var array130 = Array130(wrappedValue: (0..<130).map { _ in UUID().uuidString })
        let encoded = try codec.encoder.encode(array130)
        let decoded = try codec.decoder.decode(Array130<String>.self, from: encoded)
        XCTAssertEqual(array130.wrappedValue, decoded.wrappedValue)
        
        func failingEncodingWithExtraElement() throws {
            array130.wrappedValue.append(UUID().uuidString)
            _ = try codec.encoder.encode(array130)
        }
        XCTAssertThrowsError(try failingEncodingWithExtraElement())
    }

    func testArray131() throws {
        let codec = ScaleCoder.default()
        var array131 = Array131(wrappedValue: (0..<131).map { _ in UUID().uuidString })
        let encoded = try codec.encoder.encode(array131)
        let decoded = try codec.decoder.decode(Array131<String>.self, from: encoded)
        XCTAssertEqual(array131.wrappedValue, decoded.wrappedValue)
        
        func failingEncodingWithExtraElement() throws {
            array131.wrappedValue.append(UUID().uuidString)
            _ = try codec.encoder.encode(array131)
        }
        XCTAssertThrowsError(try failingEncodingWithExtraElement())
    }

    func testArray132() throws {
        let codec = ScaleCoder.default()
        var array132 = Array132(wrappedValue: (0..<132).map { _ in UUID().uuidString })
        let encoded = try codec.encoder.encode(array132)
        let decoded = try codec.decoder.decode(Array132<String>.self, from: encoded)
        XCTAssertEqual(array132.wrappedValue, decoded.wrappedValue)
        
        func failingEncodingWithExtraElement() throws {
            array132.wrappedValue.append(UUID().uuidString)
            _ = try codec.encoder.encode(array132)
        }
        XCTAssertThrowsError(try failingEncodingWithExtraElement())
    }

    func testArray133() throws {
        let codec = ScaleCoder.default()
        var array133 = Array133(wrappedValue: (0..<133).map { _ in UUID().uuidString })
        let encoded = try codec.encoder.encode(array133)
        let decoded = try codec.decoder.decode(Array133<String>.self, from: encoded)
        XCTAssertEqual(array133.wrappedValue, decoded.wrappedValue)
        
        func failingEncodingWithExtraElement() throws {
            array133.wrappedValue.append(UUID().uuidString)
            _ = try codec.encoder.encode(array133)
        }
        XCTAssertThrowsError(try failingEncodingWithExtraElement())
    }

    func testArray134() throws {
        let codec = ScaleCoder.default()
        var array134 = Array134(wrappedValue: (0..<134).map { _ in UUID().uuidString })
        let encoded = try codec.encoder.encode(array134)
        let decoded = try codec.decoder.decode(Array134<String>.self, from: encoded)
        XCTAssertEqual(array134.wrappedValue, decoded.wrappedValue)
        
        func failingEncodingWithExtraElement() throws {
            array134.wrappedValue.append(UUID().uuidString)
            _ = try codec.encoder.encode(array134)
        }
        XCTAssertThrowsError(try failingEncodingWithExtraElement())
    }

    func testArray135() throws {
        let codec = ScaleCoder.default()
        var array135 = Array135(wrappedValue: (0..<135).map { _ in UUID().uuidString })
        let encoded = try codec.encoder.encode(array135)
        let decoded = try codec.decoder.decode(Array135<String>.self, from: encoded)
        XCTAssertEqual(array135.wrappedValue, decoded.wrappedValue)
        
        func failingEncodingWithExtraElement() throws {
            array135.wrappedValue.append(UUID().uuidString)
            _ = try codec.encoder.encode(array135)
        }
        XCTAssertThrowsError(try failingEncodingWithExtraElement())
    }

    func testArray136() throws {
        let codec = ScaleCoder.default()
        var array136 = Array136(wrappedValue: (0..<136).map { _ in UUID().uuidString })
        let encoded = try codec.encoder.encode(array136)
        let decoded = try codec.decoder.decode(Array136<String>.self, from: encoded)
        XCTAssertEqual(array136.wrappedValue, decoded.wrappedValue)
        
        func failingEncodingWithExtraElement() throws {
            array136.wrappedValue.append(UUID().uuidString)
            _ = try codec.encoder.encode(array136)
        }
        XCTAssertThrowsError(try failingEncodingWithExtraElement())
    }

    func testArray137() throws {
        let codec = ScaleCoder.default()
        var array137 = Array137(wrappedValue: (0..<137).map { _ in UUID().uuidString })
        let encoded = try codec.encoder.encode(array137)
        let decoded = try codec.decoder.decode(Array137<String>.self, from: encoded)
        XCTAssertEqual(array137.wrappedValue, decoded.wrappedValue)
        
        func failingEncodingWithExtraElement() throws {
            array137.wrappedValue.append(UUID().uuidString)
            _ = try codec.encoder.encode(array137)
        }
        XCTAssertThrowsError(try failingEncodingWithExtraElement())
    }

    func testArray138() throws {
        let codec = ScaleCoder.default()
        var array138 = Array138(wrappedValue: (0..<138).map { _ in UUID().uuidString })
        let encoded = try codec.encoder.encode(array138)
        let decoded = try codec.decoder.decode(Array138<String>.self, from: encoded)
        XCTAssertEqual(array138.wrappedValue, decoded.wrappedValue)
        
        func failingEncodingWithExtraElement() throws {
            array138.wrappedValue.append(UUID().uuidString)
            _ = try codec.encoder.encode(array138)
        }
        XCTAssertThrowsError(try failingEncodingWithExtraElement())
    }

    func testArray139() throws {
        let codec = ScaleCoder.default()
        var array139 = Array139(wrappedValue: (0..<139).map { _ in UUID().uuidString })
        let encoded = try codec.encoder.encode(array139)
        let decoded = try codec.decoder.decode(Array139<String>.self, from: encoded)
        XCTAssertEqual(array139.wrappedValue, decoded.wrappedValue)
        
        func failingEncodingWithExtraElement() throws {
            array139.wrappedValue.append(UUID().uuidString)
            _ = try codec.encoder.encode(array139)
        }
        XCTAssertThrowsError(try failingEncodingWithExtraElement())
    }

    func testArray140() throws {
        let codec = ScaleCoder.default()
        var array140 = Array140(wrappedValue: (0..<140).map { _ in UUID().uuidString })
        let encoded = try codec.encoder.encode(array140)
        let decoded = try codec.decoder.decode(Array140<String>.self, from: encoded)
        XCTAssertEqual(array140.wrappedValue, decoded.wrappedValue)
        
        func failingEncodingWithExtraElement() throws {
            array140.wrappedValue.append(UUID().uuidString)
            _ = try codec.encoder.encode(array140)
        }
        XCTAssertThrowsError(try failingEncodingWithExtraElement())
    }

    func testArray141() throws {
        let codec = ScaleCoder.default()
        var array141 = Array141(wrappedValue: (0..<141).map { _ in UUID().uuidString })
        let encoded = try codec.encoder.encode(array141)
        let decoded = try codec.decoder.decode(Array141<String>.self, from: encoded)
        XCTAssertEqual(array141.wrappedValue, decoded.wrappedValue)
        
        func failingEncodingWithExtraElement() throws {
            array141.wrappedValue.append(UUID().uuidString)
            _ = try codec.encoder.encode(array141)
        }
        XCTAssertThrowsError(try failingEncodingWithExtraElement())
    }

    func testArray142() throws {
        let codec = ScaleCoder.default()
        var array142 = Array142(wrappedValue: (0..<142).map { _ in UUID().uuidString })
        let encoded = try codec.encoder.encode(array142)
        let decoded = try codec.decoder.decode(Array142<String>.self, from: encoded)
        XCTAssertEqual(array142.wrappedValue, decoded.wrappedValue)
        
        func failingEncodingWithExtraElement() throws {
            array142.wrappedValue.append(UUID().uuidString)
            _ = try codec.encoder.encode(array142)
        }
        XCTAssertThrowsError(try failingEncodingWithExtraElement())
    }

    func testArray143() throws {
        let codec = ScaleCoder.default()
        var array143 = Array143(wrappedValue: (0..<143).map { _ in UUID().uuidString })
        let encoded = try codec.encoder.encode(array143)
        let decoded = try codec.decoder.decode(Array143<String>.self, from: encoded)
        XCTAssertEqual(array143.wrappedValue, decoded.wrappedValue)
        
        func failingEncodingWithExtraElement() throws {
            array143.wrappedValue.append(UUID().uuidString)
            _ = try codec.encoder.encode(array143)
        }
        XCTAssertThrowsError(try failingEncodingWithExtraElement())
    }

    func testArray144() throws {
        let codec = ScaleCoder.default()
        var array144 = Array144(wrappedValue: (0..<144).map { _ in UUID().uuidString })
        let encoded = try codec.encoder.encode(array144)
        let decoded = try codec.decoder.decode(Array144<String>.self, from: encoded)
        XCTAssertEqual(array144.wrappedValue, decoded.wrappedValue)
        
        func failingEncodingWithExtraElement() throws {
            array144.wrappedValue.append(UUID().uuidString)
            _ = try codec.encoder.encode(array144)
        }
        XCTAssertThrowsError(try failingEncodingWithExtraElement())
    }

    func testArray145() throws {
        let codec = ScaleCoder.default()
        var array145 = Array145(wrappedValue: (0..<145).map { _ in UUID().uuidString })
        let encoded = try codec.encoder.encode(array145)
        let decoded = try codec.decoder.decode(Array145<String>.self, from: encoded)
        XCTAssertEqual(array145.wrappedValue, decoded.wrappedValue)
        
        func failingEncodingWithExtraElement() throws {
            array145.wrappedValue.append(UUID().uuidString)
            _ = try codec.encoder.encode(array145)
        }
        XCTAssertThrowsError(try failingEncodingWithExtraElement())
    }

    func testArray146() throws {
        let codec = ScaleCoder.default()
        var array146 = Array146(wrappedValue: (0..<146).map { _ in UUID().uuidString })
        let encoded = try codec.encoder.encode(array146)
        let decoded = try codec.decoder.decode(Array146<String>.self, from: encoded)
        XCTAssertEqual(array146.wrappedValue, decoded.wrappedValue)
        
        func failingEncodingWithExtraElement() throws {
            array146.wrappedValue.append(UUID().uuidString)
            _ = try codec.encoder.encode(array146)
        }
        XCTAssertThrowsError(try failingEncodingWithExtraElement())
    }

    func testArray147() throws {
        let codec = ScaleCoder.default()
        var array147 = Array147(wrappedValue: (0..<147).map { _ in UUID().uuidString })
        let encoded = try codec.encoder.encode(array147)
        let decoded = try codec.decoder.decode(Array147<String>.self, from: encoded)
        XCTAssertEqual(array147.wrappedValue, decoded.wrappedValue)
        
        func failingEncodingWithExtraElement() throws {
            array147.wrappedValue.append(UUID().uuidString)
            _ = try codec.encoder.encode(array147)
        }
        XCTAssertThrowsError(try failingEncodingWithExtraElement())
    }

    func testArray148() throws {
        let codec = ScaleCoder.default()
        var array148 = Array148(wrappedValue: (0..<148).map { _ in UUID().uuidString })
        let encoded = try codec.encoder.encode(array148)
        let decoded = try codec.decoder.decode(Array148<String>.self, from: encoded)
        XCTAssertEqual(array148.wrappedValue, decoded.wrappedValue)
        
        func failingEncodingWithExtraElement() throws {
            array148.wrappedValue.append(UUID().uuidString)
            _ = try codec.encoder.encode(array148)
        }
        XCTAssertThrowsError(try failingEncodingWithExtraElement())
    }

    func testArray149() throws {
        let codec = ScaleCoder.default()
        var array149 = Array149(wrappedValue: (0..<149).map { _ in UUID().uuidString })
        let encoded = try codec.encoder.encode(array149)
        let decoded = try codec.decoder.decode(Array149<String>.self, from: encoded)
        XCTAssertEqual(array149.wrappedValue, decoded.wrappedValue)
        
        func failingEncodingWithExtraElement() throws {
            array149.wrappedValue.append(UUID().uuidString)
            _ = try codec.encoder.encode(array149)
        }
        XCTAssertThrowsError(try failingEncodingWithExtraElement())
    }

    func testArray150() throws {
        let codec = ScaleCoder.default()
        var array150 = Array150(wrappedValue: (0..<150).map { _ in UUID().uuidString })
        let encoded = try codec.encoder.encode(array150)
        let decoded = try codec.decoder.decode(Array150<String>.self, from: encoded)
        XCTAssertEqual(array150.wrappedValue, decoded.wrappedValue)
        
        func failingEncodingWithExtraElement() throws {
            array150.wrappedValue.append(UUID().uuidString)
            _ = try codec.encoder.encode(array150)
        }
        XCTAssertThrowsError(try failingEncodingWithExtraElement())
    }

    func testArray151() throws {
        let codec = ScaleCoder.default()
        var array151 = Array151(wrappedValue: (0..<151).map { _ in UUID().uuidString })
        let encoded = try codec.encoder.encode(array151)
        let decoded = try codec.decoder.decode(Array151<String>.self, from: encoded)
        XCTAssertEqual(array151.wrappedValue, decoded.wrappedValue)
        
        func failingEncodingWithExtraElement() throws {
            array151.wrappedValue.append(UUID().uuidString)
            _ = try codec.encoder.encode(array151)
        }
        XCTAssertThrowsError(try failingEncodingWithExtraElement())
    }

    func testArray152() throws {
        let codec = ScaleCoder.default()
        var array152 = Array152(wrappedValue: (0..<152).map { _ in UUID().uuidString })
        let encoded = try codec.encoder.encode(array152)
        let decoded = try codec.decoder.decode(Array152<String>.self, from: encoded)
        XCTAssertEqual(array152.wrappedValue, decoded.wrappedValue)
        
        func failingEncodingWithExtraElement() throws {
            array152.wrappedValue.append(UUID().uuidString)
            _ = try codec.encoder.encode(array152)
        }
        XCTAssertThrowsError(try failingEncodingWithExtraElement())
    }

    func testArray153() throws {
        let codec = ScaleCoder.default()
        var array153 = Array153(wrappedValue: (0..<153).map { _ in UUID().uuidString })
        let encoded = try codec.encoder.encode(array153)
        let decoded = try codec.decoder.decode(Array153<String>.self, from: encoded)
        XCTAssertEqual(array153.wrappedValue, decoded.wrappedValue)
        
        func failingEncodingWithExtraElement() throws {
            array153.wrappedValue.append(UUID().uuidString)
            _ = try codec.encoder.encode(array153)
        }
        XCTAssertThrowsError(try failingEncodingWithExtraElement())
    }

    func testArray154() throws {
        let codec = ScaleCoder.default()
        var array154 = Array154(wrappedValue: (0..<154).map { _ in UUID().uuidString })
        let encoded = try codec.encoder.encode(array154)
        let decoded = try codec.decoder.decode(Array154<String>.self, from: encoded)
        XCTAssertEqual(array154.wrappedValue, decoded.wrappedValue)
        
        func failingEncodingWithExtraElement() throws {
            array154.wrappedValue.append(UUID().uuidString)
            _ = try codec.encoder.encode(array154)
        }
        XCTAssertThrowsError(try failingEncodingWithExtraElement())
    }

    func testArray155() throws {
        let codec = ScaleCoder.default()
        var array155 = Array155(wrappedValue: (0..<155).map { _ in UUID().uuidString })
        let encoded = try codec.encoder.encode(array155)
        let decoded = try codec.decoder.decode(Array155<String>.self, from: encoded)
        XCTAssertEqual(array155.wrappedValue, decoded.wrappedValue)
        
        func failingEncodingWithExtraElement() throws {
            array155.wrappedValue.append(UUID().uuidString)
            _ = try codec.encoder.encode(array155)
        }
        XCTAssertThrowsError(try failingEncodingWithExtraElement())
    }

    func testArray156() throws {
        let codec = ScaleCoder.default()
        var array156 = Array156(wrappedValue: (0..<156).map { _ in UUID().uuidString })
        let encoded = try codec.encoder.encode(array156)
        let decoded = try codec.decoder.decode(Array156<String>.self, from: encoded)
        XCTAssertEqual(array156.wrappedValue, decoded.wrappedValue)
        
        func failingEncodingWithExtraElement() throws {
            array156.wrappedValue.append(UUID().uuidString)
            _ = try codec.encoder.encode(array156)
        }
        XCTAssertThrowsError(try failingEncodingWithExtraElement())
    }

    func testArray157() throws {
        let codec = ScaleCoder.default()
        var array157 = Array157(wrappedValue: (0..<157).map { _ in UUID().uuidString })
        let encoded = try codec.encoder.encode(array157)
        let decoded = try codec.decoder.decode(Array157<String>.self, from: encoded)
        XCTAssertEqual(array157.wrappedValue, decoded.wrappedValue)
        
        func failingEncodingWithExtraElement() throws {
            array157.wrappedValue.append(UUID().uuidString)
            _ = try codec.encoder.encode(array157)
        }
        XCTAssertThrowsError(try failingEncodingWithExtraElement())
    }

    func testArray158() throws {
        let codec = ScaleCoder.default()
        var array158 = Array158(wrappedValue: (0..<158).map { _ in UUID().uuidString })
        let encoded = try codec.encoder.encode(array158)
        let decoded = try codec.decoder.decode(Array158<String>.self, from: encoded)
        XCTAssertEqual(array158.wrappedValue, decoded.wrappedValue)
        
        func failingEncodingWithExtraElement() throws {
            array158.wrappedValue.append(UUID().uuidString)
            _ = try codec.encoder.encode(array158)
        }
        XCTAssertThrowsError(try failingEncodingWithExtraElement())
    }

    func testArray159() throws {
        let codec = ScaleCoder.default()
        var array159 = Array159(wrappedValue: (0..<159).map { _ in UUID().uuidString })
        let encoded = try codec.encoder.encode(array159)
        let decoded = try codec.decoder.decode(Array159<String>.self, from: encoded)
        XCTAssertEqual(array159.wrappedValue, decoded.wrappedValue)
        
        func failingEncodingWithExtraElement() throws {
            array159.wrappedValue.append(UUID().uuidString)
            _ = try codec.encoder.encode(array159)
        }
        XCTAssertThrowsError(try failingEncodingWithExtraElement())
    }

    func testArray160() throws {
        let codec = ScaleCoder.default()
        var array160 = Array160(wrappedValue: (0..<160).map { _ in UUID().uuidString })
        let encoded = try codec.encoder.encode(array160)
        let decoded = try codec.decoder.decode(Array160<String>.self, from: encoded)
        XCTAssertEqual(array160.wrappedValue, decoded.wrappedValue)
        
        func failingEncodingWithExtraElement() throws {
            array160.wrappedValue.append(UUID().uuidString)
            _ = try codec.encoder.encode(array160)
        }
        XCTAssertThrowsError(try failingEncodingWithExtraElement())
    }

    func testArray161() throws {
        let codec = ScaleCoder.default()
        var array161 = Array161(wrappedValue: (0..<161).map { _ in UUID().uuidString })
        let encoded = try codec.encoder.encode(array161)
        let decoded = try codec.decoder.decode(Array161<String>.self, from: encoded)
        XCTAssertEqual(array161.wrappedValue, decoded.wrappedValue)
        
        func failingEncodingWithExtraElement() throws {
            array161.wrappedValue.append(UUID().uuidString)
            _ = try codec.encoder.encode(array161)
        }
        XCTAssertThrowsError(try failingEncodingWithExtraElement())
    }

    func testArray162() throws {
        let codec = ScaleCoder.default()
        var array162 = Array162(wrappedValue: (0..<162).map { _ in UUID().uuidString })
        let encoded = try codec.encoder.encode(array162)
        let decoded = try codec.decoder.decode(Array162<String>.self, from: encoded)
        XCTAssertEqual(array162.wrappedValue, decoded.wrappedValue)
        
        func failingEncodingWithExtraElement() throws {
            array162.wrappedValue.append(UUID().uuidString)
            _ = try codec.encoder.encode(array162)
        }
        XCTAssertThrowsError(try failingEncodingWithExtraElement())
    }

    func testArray163() throws {
        let codec = ScaleCoder.default()
        var array163 = Array163(wrappedValue: (0..<163).map { _ in UUID().uuidString })
        let encoded = try codec.encoder.encode(array163)
        let decoded = try codec.decoder.decode(Array163<String>.self, from: encoded)
        XCTAssertEqual(array163.wrappedValue, decoded.wrappedValue)
        
        func failingEncodingWithExtraElement() throws {
            array163.wrappedValue.append(UUID().uuidString)
            _ = try codec.encoder.encode(array163)
        }
        XCTAssertThrowsError(try failingEncodingWithExtraElement())
    }

    func testArray164() throws {
        let codec = ScaleCoder.default()
        var array164 = Array164(wrappedValue: (0..<164).map { _ in UUID().uuidString })
        let encoded = try codec.encoder.encode(array164)
        let decoded = try codec.decoder.decode(Array164<String>.self, from: encoded)
        XCTAssertEqual(array164.wrappedValue, decoded.wrappedValue)
        
        func failingEncodingWithExtraElement() throws {
            array164.wrappedValue.append(UUID().uuidString)
            _ = try codec.encoder.encode(array164)
        }
        XCTAssertThrowsError(try failingEncodingWithExtraElement())
    }

    func testArray165() throws {
        let codec = ScaleCoder.default()
        var array165 = Array165(wrappedValue: (0..<165).map { _ in UUID().uuidString })
        let encoded = try codec.encoder.encode(array165)
        let decoded = try codec.decoder.decode(Array165<String>.self, from: encoded)
        XCTAssertEqual(array165.wrappedValue, decoded.wrappedValue)
        
        func failingEncodingWithExtraElement() throws {
            array165.wrappedValue.append(UUID().uuidString)
            _ = try codec.encoder.encode(array165)
        }
        XCTAssertThrowsError(try failingEncodingWithExtraElement())
    }

    func testArray166() throws {
        let codec = ScaleCoder.default()
        var array166 = Array166(wrappedValue: (0..<166).map { _ in UUID().uuidString })
        let encoded = try codec.encoder.encode(array166)
        let decoded = try codec.decoder.decode(Array166<String>.self, from: encoded)
        XCTAssertEqual(array166.wrappedValue, decoded.wrappedValue)
        
        func failingEncodingWithExtraElement() throws {
            array166.wrappedValue.append(UUID().uuidString)
            _ = try codec.encoder.encode(array166)
        }
        XCTAssertThrowsError(try failingEncodingWithExtraElement())
    }

    func testArray167() throws {
        let codec = ScaleCoder.default()
        var array167 = Array167(wrappedValue: (0..<167).map { _ in UUID().uuidString })
        let encoded = try codec.encoder.encode(array167)
        let decoded = try codec.decoder.decode(Array167<String>.self, from: encoded)
        XCTAssertEqual(array167.wrappedValue, decoded.wrappedValue)
        
        func failingEncodingWithExtraElement() throws {
            array167.wrappedValue.append(UUID().uuidString)
            _ = try codec.encoder.encode(array167)
        }
        XCTAssertThrowsError(try failingEncodingWithExtraElement())
    }

    func testArray168() throws {
        let codec = ScaleCoder.default()
        var array168 = Array168(wrappedValue: (0..<168).map { _ in UUID().uuidString })
        let encoded = try codec.encoder.encode(array168)
        let decoded = try codec.decoder.decode(Array168<String>.self, from: encoded)
        XCTAssertEqual(array168.wrappedValue, decoded.wrappedValue)
        
        func failingEncodingWithExtraElement() throws {
            array168.wrappedValue.append(UUID().uuidString)
            _ = try codec.encoder.encode(array168)
        }
        XCTAssertThrowsError(try failingEncodingWithExtraElement())
    }

    func testArray169() throws {
        let codec = ScaleCoder.default()
        var array169 = Array169(wrappedValue: (0..<169).map { _ in UUID().uuidString })
        let encoded = try codec.encoder.encode(array169)
        let decoded = try codec.decoder.decode(Array169<String>.self, from: encoded)
        XCTAssertEqual(array169.wrappedValue, decoded.wrappedValue)
        
        func failingEncodingWithExtraElement() throws {
            array169.wrappedValue.append(UUID().uuidString)
            _ = try codec.encoder.encode(array169)
        }
        XCTAssertThrowsError(try failingEncodingWithExtraElement())
    }

    func testArray170() throws {
        let codec = ScaleCoder.default()
        var array170 = Array170(wrappedValue: (0..<170).map { _ in UUID().uuidString })
        let encoded = try codec.encoder.encode(array170)
        let decoded = try codec.decoder.decode(Array170<String>.self, from: encoded)
        XCTAssertEqual(array170.wrappedValue, decoded.wrappedValue)
        
        func failingEncodingWithExtraElement() throws {
            array170.wrappedValue.append(UUID().uuidString)
            _ = try codec.encoder.encode(array170)
        }
        XCTAssertThrowsError(try failingEncodingWithExtraElement())
    }

    func testArray171() throws {
        let codec = ScaleCoder.default()
        var array171 = Array171(wrappedValue: (0..<171).map { _ in UUID().uuidString })
        let encoded = try codec.encoder.encode(array171)
        let decoded = try codec.decoder.decode(Array171<String>.self, from: encoded)
        XCTAssertEqual(array171.wrappedValue, decoded.wrappedValue)
        
        func failingEncodingWithExtraElement() throws {
            array171.wrappedValue.append(UUID().uuidString)
            _ = try codec.encoder.encode(array171)
        }
        XCTAssertThrowsError(try failingEncodingWithExtraElement())
    }

    func testArray172() throws {
        let codec = ScaleCoder.default()
        var array172 = Array172(wrappedValue: (0..<172).map { _ in UUID().uuidString })
        let encoded = try codec.encoder.encode(array172)
        let decoded = try codec.decoder.decode(Array172<String>.self, from: encoded)
        XCTAssertEqual(array172.wrappedValue, decoded.wrappedValue)
        
        func failingEncodingWithExtraElement() throws {
            array172.wrappedValue.append(UUID().uuidString)
            _ = try codec.encoder.encode(array172)
        }
        XCTAssertThrowsError(try failingEncodingWithExtraElement())
    }

    func testArray173() throws {
        let codec = ScaleCoder.default()
        var array173 = Array173(wrappedValue: (0..<173).map { _ in UUID().uuidString })
        let encoded = try codec.encoder.encode(array173)
        let decoded = try codec.decoder.decode(Array173<String>.self, from: encoded)
        XCTAssertEqual(array173.wrappedValue, decoded.wrappedValue)
        
        func failingEncodingWithExtraElement() throws {
            array173.wrappedValue.append(UUID().uuidString)
            _ = try codec.encoder.encode(array173)
        }
        XCTAssertThrowsError(try failingEncodingWithExtraElement())
    }

    func testArray174() throws {
        let codec = ScaleCoder.default()
        var array174 = Array174(wrappedValue: (0..<174).map { _ in UUID().uuidString })
        let encoded = try codec.encoder.encode(array174)
        let decoded = try codec.decoder.decode(Array174<String>.self, from: encoded)
        XCTAssertEqual(array174.wrappedValue, decoded.wrappedValue)
        
        func failingEncodingWithExtraElement() throws {
            array174.wrappedValue.append(UUID().uuidString)
            _ = try codec.encoder.encode(array174)
        }
        XCTAssertThrowsError(try failingEncodingWithExtraElement())
    }

    func testArray175() throws {
        let codec = ScaleCoder.default()
        var array175 = Array175(wrappedValue: (0..<175).map { _ in UUID().uuidString })
        let encoded = try codec.encoder.encode(array175)
        let decoded = try codec.decoder.decode(Array175<String>.self, from: encoded)
        XCTAssertEqual(array175.wrappedValue, decoded.wrappedValue)
        
        func failingEncodingWithExtraElement() throws {
            array175.wrappedValue.append(UUID().uuidString)
            _ = try codec.encoder.encode(array175)
        }
        XCTAssertThrowsError(try failingEncodingWithExtraElement())
    }

    func testArray176() throws {
        let codec = ScaleCoder.default()
        var array176 = Array176(wrappedValue: (0..<176).map { _ in UUID().uuidString })
        let encoded = try codec.encoder.encode(array176)
        let decoded = try codec.decoder.decode(Array176<String>.self, from: encoded)
        XCTAssertEqual(array176.wrappedValue, decoded.wrappedValue)
        
        func failingEncodingWithExtraElement() throws {
            array176.wrappedValue.append(UUID().uuidString)
            _ = try codec.encoder.encode(array176)
        }
        XCTAssertThrowsError(try failingEncodingWithExtraElement())
    }

    func testArray177() throws {
        let codec = ScaleCoder.default()
        var array177 = Array177(wrappedValue: (0..<177).map { _ in UUID().uuidString })
        let encoded = try codec.encoder.encode(array177)
        let decoded = try codec.decoder.decode(Array177<String>.self, from: encoded)
        XCTAssertEqual(array177.wrappedValue, decoded.wrappedValue)
        
        func failingEncodingWithExtraElement() throws {
            array177.wrappedValue.append(UUID().uuidString)
            _ = try codec.encoder.encode(array177)
        }
        XCTAssertThrowsError(try failingEncodingWithExtraElement())
    }

    func testArray178() throws {
        let codec = ScaleCoder.default()
        var array178 = Array178(wrappedValue: (0..<178).map { _ in UUID().uuidString })
        let encoded = try codec.encoder.encode(array178)
        let decoded = try codec.decoder.decode(Array178<String>.self, from: encoded)
        XCTAssertEqual(array178.wrappedValue, decoded.wrappedValue)
        
        func failingEncodingWithExtraElement() throws {
            array178.wrappedValue.append(UUID().uuidString)
            _ = try codec.encoder.encode(array178)
        }
        XCTAssertThrowsError(try failingEncodingWithExtraElement())
    }

    func testArray179() throws {
        let codec = ScaleCoder.default()
        var array179 = Array179(wrappedValue: (0..<179).map { _ in UUID().uuidString })
        let encoded = try codec.encoder.encode(array179)
        let decoded = try codec.decoder.decode(Array179<String>.self, from: encoded)
        XCTAssertEqual(array179.wrappedValue, decoded.wrappedValue)
        
        func failingEncodingWithExtraElement() throws {
            array179.wrappedValue.append(UUID().uuidString)
            _ = try codec.encoder.encode(array179)
        }
        XCTAssertThrowsError(try failingEncodingWithExtraElement())
    }

    func testArray180() throws {
        let codec = ScaleCoder.default()
        var array180 = Array180(wrappedValue: (0..<180).map { _ in UUID().uuidString })
        let encoded = try codec.encoder.encode(array180)
        let decoded = try codec.decoder.decode(Array180<String>.self, from: encoded)
        XCTAssertEqual(array180.wrappedValue, decoded.wrappedValue)
        
        func failingEncodingWithExtraElement() throws {
            array180.wrappedValue.append(UUID().uuidString)
            _ = try codec.encoder.encode(array180)
        }
        XCTAssertThrowsError(try failingEncodingWithExtraElement())
    }

    func testArray181() throws {
        let codec = ScaleCoder.default()
        var array181 = Array181(wrappedValue: (0..<181).map { _ in UUID().uuidString })
        let encoded = try codec.encoder.encode(array181)
        let decoded = try codec.decoder.decode(Array181<String>.self, from: encoded)
        XCTAssertEqual(array181.wrappedValue, decoded.wrappedValue)
        
        func failingEncodingWithExtraElement() throws {
            array181.wrappedValue.append(UUID().uuidString)
            _ = try codec.encoder.encode(array181)
        }
        XCTAssertThrowsError(try failingEncodingWithExtraElement())
    }

    func testArray182() throws {
        let codec = ScaleCoder.default()
        var array182 = Array182(wrappedValue: (0..<182).map { _ in UUID().uuidString })
        let encoded = try codec.encoder.encode(array182)
        let decoded = try codec.decoder.decode(Array182<String>.self, from: encoded)
        XCTAssertEqual(array182.wrappedValue, decoded.wrappedValue)
        
        func failingEncodingWithExtraElement() throws {
            array182.wrappedValue.append(UUID().uuidString)
            _ = try codec.encoder.encode(array182)
        }
        XCTAssertThrowsError(try failingEncodingWithExtraElement())
    }

    func testArray183() throws {
        let codec = ScaleCoder.default()
        var array183 = Array183(wrappedValue: (0..<183).map { _ in UUID().uuidString })
        let encoded = try codec.encoder.encode(array183)
        let decoded = try codec.decoder.decode(Array183<String>.self, from: encoded)
        XCTAssertEqual(array183.wrappedValue, decoded.wrappedValue)
        
        func failingEncodingWithExtraElement() throws {
            array183.wrappedValue.append(UUID().uuidString)
            _ = try codec.encoder.encode(array183)
        }
        XCTAssertThrowsError(try failingEncodingWithExtraElement())
    }

    func testArray184() throws {
        let codec = ScaleCoder.default()
        var array184 = Array184(wrappedValue: (0..<184).map { _ in UUID().uuidString })
        let encoded = try codec.encoder.encode(array184)
        let decoded = try codec.decoder.decode(Array184<String>.self, from: encoded)
        XCTAssertEqual(array184.wrappedValue, decoded.wrappedValue)
        
        func failingEncodingWithExtraElement() throws {
            array184.wrappedValue.append(UUID().uuidString)
            _ = try codec.encoder.encode(array184)
        }
        XCTAssertThrowsError(try failingEncodingWithExtraElement())
    }

    func testArray185() throws {
        let codec = ScaleCoder.default()
        var array185 = Array185(wrappedValue: (0..<185).map { _ in UUID().uuidString })
        let encoded = try codec.encoder.encode(array185)
        let decoded = try codec.decoder.decode(Array185<String>.self, from: encoded)
        XCTAssertEqual(array185.wrappedValue, decoded.wrappedValue)
        
        func failingEncodingWithExtraElement() throws {
            array185.wrappedValue.append(UUID().uuidString)
            _ = try codec.encoder.encode(array185)
        }
        XCTAssertThrowsError(try failingEncodingWithExtraElement())
    }

    func testArray186() throws {
        let codec = ScaleCoder.default()
        var array186 = Array186(wrappedValue: (0..<186).map { _ in UUID().uuidString })
        let encoded = try codec.encoder.encode(array186)
        let decoded = try codec.decoder.decode(Array186<String>.self, from: encoded)
        XCTAssertEqual(array186.wrappedValue, decoded.wrappedValue)
        
        func failingEncodingWithExtraElement() throws {
            array186.wrappedValue.append(UUID().uuidString)
            _ = try codec.encoder.encode(array186)
        }
        XCTAssertThrowsError(try failingEncodingWithExtraElement())
    }

    func testArray187() throws {
        let codec = ScaleCoder.default()
        var array187 = Array187(wrappedValue: (0..<187).map { _ in UUID().uuidString })
        let encoded = try codec.encoder.encode(array187)
        let decoded = try codec.decoder.decode(Array187<String>.self, from: encoded)
        XCTAssertEqual(array187.wrappedValue, decoded.wrappedValue)
        
        func failingEncodingWithExtraElement() throws {
            array187.wrappedValue.append(UUID().uuidString)
            _ = try codec.encoder.encode(array187)
        }
        XCTAssertThrowsError(try failingEncodingWithExtraElement())
    }

    func testArray188() throws {
        let codec = ScaleCoder.default()
        var array188 = Array188(wrappedValue: (0..<188).map { _ in UUID().uuidString })
        let encoded = try codec.encoder.encode(array188)
        let decoded = try codec.decoder.decode(Array188<String>.self, from: encoded)
        XCTAssertEqual(array188.wrappedValue, decoded.wrappedValue)
        
        func failingEncodingWithExtraElement() throws {
            array188.wrappedValue.append(UUID().uuidString)
            _ = try codec.encoder.encode(array188)
        }
        XCTAssertThrowsError(try failingEncodingWithExtraElement())
    }

    func testArray189() throws {
        let codec = ScaleCoder.default()
        var array189 = Array189(wrappedValue: (0..<189).map { _ in UUID().uuidString })
        let encoded = try codec.encoder.encode(array189)
        let decoded = try codec.decoder.decode(Array189<String>.self, from: encoded)
        XCTAssertEqual(array189.wrappedValue, decoded.wrappedValue)
        
        func failingEncodingWithExtraElement() throws {
            array189.wrappedValue.append(UUID().uuidString)
            _ = try codec.encoder.encode(array189)
        }
        XCTAssertThrowsError(try failingEncodingWithExtraElement())
    }

    func testArray190() throws {
        let codec = ScaleCoder.default()
        var array190 = Array190(wrappedValue: (0..<190).map { _ in UUID().uuidString })
        let encoded = try codec.encoder.encode(array190)
        let decoded = try codec.decoder.decode(Array190<String>.self, from: encoded)
        XCTAssertEqual(array190.wrappedValue, decoded.wrappedValue)
        
        func failingEncodingWithExtraElement() throws {
            array190.wrappedValue.append(UUID().uuidString)
            _ = try codec.encoder.encode(array190)
        }
        XCTAssertThrowsError(try failingEncodingWithExtraElement())
    }

    func testArray191() throws {
        let codec = ScaleCoder.default()
        var array191 = Array191(wrappedValue: (0..<191).map { _ in UUID().uuidString })
        let encoded = try codec.encoder.encode(array191)
        let decoded = try codec.decoder.decode(Array191<String>.self, from: encoded)
        XCTAssertEqual(array191.wrappedValue, decoded.wrappedValue)
        
        func failingEncodingWithExtraElement() throws {
            array191.wrappedValue.append(UUID().uuidString)
            _ = try codec.encoder.encode(array191)
        }
        XCTAssertThrowsError(try failingEncodingWithExtraElement())
    }

    func testArray192() throws {
        let codec = ScaleCoder.default()
        var array192 = Array192(wrappedValue: (0..<192).map { _ in UUID().uuidString })
        let encoded = try codec.encoder.encode(array192)
        let decoded = try codec.decoder.decode(Array192<String>.self, from: encoded)
        XCTAssertEqual(array192.wrappedValue, decoded.wrappedValue)
        
        func failingEncodingWithExtraElement() throws {
            array192.wrappedValue.append(UUID().uuidString)
            _ = try codec.encoder.encode(array192)
        }
        XCTAssertThrowsError(try failingEncodingWithExtraElement())
    }

    func testArray193() throws {
        let codec = ScaleCoder.default()
        var array193 = Array193(wrappedValue: (0..<193).map { _ in UUID().uuidString })
        let encoded = try codec.encoder.encode(array193)
        let decoded = try codec.decoder.decode(Array193<String>.self, from: encoded)
        XCTAssertEqual(array193.wrappedValue, decoded.wrappedValue)
        
        func failingEncodingWithExtraElement() throws {
            array193.wrappedValue.append(UUID().uuidString)
            _ = try codec.encoder.encode(array193)
        }
        XCTAssertThrowsError(try failingEncodingWithExtraElement())
    }

    func testArray194() throws {
        let codec = ScaleCoder.default()
        var array194 = Array194(wrappedValue: (0..<194).map { _ in UUID().uuidString })
        let encoded = try codec.encoder.encode(array194)
        let decoded = try codec.decoder.decode(Array194<String>.self, from: encoded)
        XCTAssertEqual(array194.wrappedValue, decoded.wrappedValue)
        
        func failingEncodingWithExtraElement() throws {
            array194.wrappedValue.append(UUID().uuidString)
            _ = try codec.encoder.encode(array194)
        }
        XCTAssertThrowsError(try failingEncodingWithExtraElement())
    }

    func testArray195() throws {
        let codec = ScaleCoder.default()
        var array195 = Array195(wrappedValue: (0..<195).map { _ in UUID().uuidString })
        let encoded = try codec.encoder.encode(array195)
        let decoded = try codec.decoder.decode(Array195<String>.self, from: encoded)
        XCTAssertEqual(array195.wrappedValue, decoded.wrappedValue)
        
        func failingEncodingWithExtraElement() throws {
            array195.wrappedValue.append(UUID().uuidString)
            _ = try codec.encoder.encode(array195)
        }
        XCTAssertThrowsError(try failingEncodingWithExtraElement())
    }

    func testArray196() throws {
        let codec = ScaleCoder.default()
        var array196 = Array196(wrappedValue: (0..<196).map { _ in UUID().uuidString })
        let encoded = try codec.encoder.encode(array196)
        let decoded = try codec.decoder.decode(Array196<String>.self, from: encoded)
        XCTAssertEqual(array196.wrappedValue, decoded.wrappedValue)
        
        func failingEncodingWithExtraElement() throws {
            array196.wrappedValue.append(UUID().uuidString)
            _ = try codec.encoder.encode(array196)
        }
        XCTAssertThrowsError(try failingEncodingWithExtraElement())
    }

    func testArray197() throws {
        let codec = ScaleCoder.default()
        var array197 = Array197(wrappedValue: (0..<197).map { _ in UUID().uuidString })
        let encoded = try codec.encoder.encode(array197)
        let decoded = try codec.decoder.decode(Array197<String>.self, from: encoded)
        XCTAssertEqual(array197.wrappedValue, decoded.wrappedValue)
        
        func failingEncodingWithExtraElement() throws {
            array197.wrappedValue.append(UUID().uuidString)
            _ = try codec.encoder.encode(array197)
        }
        XCTAssertThrowsError(try failingEncodingWithExtraElement())
    }

    func testArray198() throws {
        let codec = ScaleCoder.default()
        var array198 = Array198(wrappedValue: (0..<198).map { _ in UUID().uuidString })
        let encoded = try codec.encoder.encode(array198)
        let decoded = try codec.decoder.decode(Array198<String>.self, from: encoded)
        XCTAssertEqual(array198.wrappedValue, decoded.wrappedValue)
        
        func failingEncodingWithExtraElement() throws {
            array198.wrappedValue.append(UUID().uuidString)
            _ = try codec.encoder.encode(array198)
        }
        XCTAssertThrowsError(try failingEncodingWithExtraElement())
    }

    func testArray199() throws {
        let codec = ScaleCoder.default()
        var array199 = Array199(wrappedValue: (0..<199).map { _ in UUID().uuidString })
        let encoded = try codec.encoder.encode(array199)
        let decoded = try codec.decoder.decode(Array199<String>.self, from: encoded)
        XCTAssertEqual(array199.wrappedValue, decoded.wrappedValue)
        
        func failingEncodingWithExtraElement() throws {
            array199.wrappedValue.append(UUID().uuidString)
            _ = try codec.encoder.encode(array199)
        }
        XCTAssertThrowsError(try failingEncodingWithExtraElement())
    }

    func testArray200() throws {
        let codec = ScaleCoder.default()
        var array200 = Array200(wrappedValue: (0..<200).map { _ in UUID().uuidString })
        let encoded = try codec.encoder.encode(array200)
        let decoded = try codec.decoder.decode(Array200<String>.self, from: encoded)
        XCTAssertEqual(array200.wrappedValue, decoded.wrappedValue)
        
        func failingEncodingWithExtraElement() throws {
            array200.wrappedValue.append(UUID().uuidString)
            _ = try codec.encoder.encode(array200)
        }
        XCTAssertThrowsError(try failingEncodingWithExtraElement())
    }

    func testArray201() throws {
        let codec = ScaleCoder.default()
        var array201 = Array201(wrappedValue: (0..<201).map { _ in UUID().uuidString })
        let encoded = try codec.encoder.encode(array201)
        let decoded = try codec.decoder.decode(Array201<String>.self, from: encoded)
        XCTAssertEqual(array201.wrappedValue, decoded.wrappedValue)
        
        func failingEncodingWithExtraElement() throws {
            array201.wrappedValue.append(UUID().uuidString)
            _ = try codec.encoder.encode(array201)
        }
        XCTAssertThrowsError(try failingEncodingWithExtraElement())
    }

    func testArray202() throws {
        let codec = ScaleCoder.default()
        var array202 = Array202(wrappedValue: (0..<202).map { _ in UUID().uuidString })
        let encoded = try codec.encoder.encode(array202)
        let decoded = try codec.decoder.decode(Array202<String>.self, from: encoded)
        XCTAssertEqual(array202.wrappedValue, decoded.wrappedValue)
        
        func failingEncodingWithExtraElement() throws {
            array202.wrappedValue.append(UUID().uuidString)
            _ = try codec.encoder.encode(array202)
        }
        XCTAssertThrowsError(try failingEncodingWithExtraElement())
    }

    func testArray203() throws {
        let codec = ScaleCoder.default()
        var array203 = Array203(wrappedValue: (0..<203).map { _ in UUID().uuidString })
        let encoded = try codec.encoder.encode(array203)
        let decoded = try codec.decoder.decode(Array203<String>.self, from: encoded)
        XCTAssertEqual(array203.wrappedValue, decoded.wrappedValue)
        
        func failingEncodingWithExtraElement() throws {
            array203.wrappedValue.append(UUID().uuidString)
            _ = try codec.encoder.encode(array203)
        }
        XCTAssertThrowsError(try failingEncodingWithExtraElement())
    }

    func testArray204() throws {
        let codec = ScaleCoder.default()
        var array204 = Array204(wrappedValue: (0..<204).map { _ in UUID().uuidString })
        let encoded = try codec.encoder.encode(array204)
        let decoded = try codec.decoder.decode(Array204<String>.self, from: encoded)
        XCTAssertEqual(array204.wrappedValue, decoded.wrappedValue)
        
        func failingEncodingWithExtraElement() throws {
            array204.wrappedValue.append(UUID().uuidString)
            _ = try codec.encoder.encode(array204)
        }
        XCTAssertThrowsError(try failingEncodingWithExtraElement())
    }

    func testArray205() throws {
        let codec = ScaleCoder.default()
        var array205 = Array205(wrappedValue: (0..<205).map { _ in UUID().uuidString })
        let encoded = try codec.encoder.encode(array205)
        let decoded = try codec.decoder.decode(Array205<String>.self, from: encoded)
        XCTAssertEqual(array205.wrappedValue, decoded.wrappedValue)
        
        func failingEncodingWithExtraElement() throws {
            array205.wrappedValue.append(UUID().uuidString)
            _ = try codec.encoder.encode(array205)
        }
        XCTAssertThrowsError(try failingEncodingWithExtraElement())
    }

    func testArray206() throws {
        let codec = ScaleCoder.default()
        var array206 = Array206(wrappedValue: (0..<206).map { _ in UUID().uuidString })
        let encoded = try codec.encoder.encode(array206)
        let decoded = try codec.decoder.decode(Array206<String>.self, from: encoded)
        XCTAssertEqual(array206.wrappedValue, decoded.wrappedValue)
        
        func failingEncodingWithExtraElement() throws {
            array206.wrappedValue.append(UUID().uuidString)
            _ = try codec.encoder.encode(array206)
        }
        XCTAssertThrowsError(try failingEncodingWithExtraElement())
    }

    func testArray207() throws {
        let codec = ScaleCoder.default()
        var array207 = Array207(wrappedValue: (0..<207).map { _ in UUID().uuidString })
        let encoded = try codec.encoder.encode(array207)
        let decoded = try codec.decoder.decode(Array207<String>.self, from: encoded)
        XCTAssertEqual(array207.wrappedValue, decoded.wrappedValue)
        
        func failingEncodingWithExtraElement() throws {
            array207.wrappedValue.append(UUID().uuidString)
            _ = try codec.encoder.encode(array207)
        }
        XCTAssertThrowsError(try failingEncodingWithExtraElement())
    }

    func testArray208() throws {
        let codec = ScaleCoder.default()
        var array208 = Array208(wrappedValue: (0..<208).map { _ in UUID().uuidString })
        let encoded = try codec.encoder.encode(array208)
        let decoded = try codec.decoder.decode(Array208<String>.self, from: encoded)
        XCTAssertEqual(array208.wrappedValue, decoded.wrappedValue)
        
        func failingEncodingWithExtraElement() throws {
            array208.wrappedValue.append(UUID().uuidString)
            _ = try codec.encoder.encode(array208)
        }
        XCTAssertThrowsError(try failingEncodingWithExtraElement())
    }

    func testArray209() throws {
        let codec = ScaleCoder.default()
        var array209 = Array209(wrappedValue: (0..<209).map { _ in UUID().uuidString })
        let encoded = try codec.encoder.encode(array209)
        let decoded = try codec.decoder.decode(Array209<String>.self, from: encoded)
        XCTAssertEqual(array209.wrappedValue, decoded.wrappedValue)
        
        func failingEncodingWithExtraElement() throws {
            array209.wrappedValue.append(UUID().uuidString)
            _ = try codec.encoder.encode(array209)
        }
        XCTAssertThrowsError(try failingEncodingWithExtraElement())
    }

    func testArray210() throws {
        let codec = ScaleCoder.default()
        var array210 = Array210(wrappedValue: (0..<210).map { _ in UUID().uuidString })
        let encoded = try codec.encoder.encode(array210)
        let decoded = try codec.decoder.decode(Array210<String>.self, from: encoded)
        XCTAssertEqual(array210.wrappedValue, decoded.wrappedValue)
        
        func failingEncodingWithExtraElement() throws {
            array210.wrappedValue.append(UUID().uuidString)
            _ = try codec.encoder.encode(array210)
        }
        XCTAssertThrowsError(try failingEncodingWithExtraElement())
    }

    func testArray211() throws {
        let codec = ScaleCoder.default()
        var array211 = Array211(wrappedValue: (0..<211).map { _ in UUID().uuidString })
        let encoded = try codec.encoder.encode(array211)
        let decoded = try codec.decoder.decode(Array211<String>.self, from: encoded)
        XCTAssertEqual(array211.wrappedValue, decoded.wrappedValue)
        
        func failingEncodingWithExtraElement() throws {
            array211.wrappedValue.append(UUID().uuidString)
            _ = try codec.encoder.encode(array211)
        }
        XCTAssertThrowsError(try failingEncodingWithExtraElement())
    }

    func testArray212() throws {
        let codec = ScaleCoder.default()
        var array212 = Array212(wrappedValue: (0..<212).map { _ in UUID().uuidString })
        let encoded = try codec.encoder.encode(array212)
        let decoded = try codec.decoder.decode(Array212<String>.self, from: encoded)
        XCTAssertEqual(array212.wrappedValue, decoded.wrappedValue)
        
        func failingEncodingWithExtraElement() throws {
            array212.wrappedValue.append(UUID().uuidString)
            _ = try codec.encoder.encode(array212)
        }
        XCTAssertThrowsError(try failingEncodingWithExtraElement())
    }

    func testArray213() throws {
        let codec = ScaleCoder.default()
        var array213 = Array213(wrappedValue: (0..<213).map { _ in UUID().uuidString })
        let encoded = try codec.encoder.encode(array213)
        let decoded = try codec.decoder.decode(Array213<String>.self, from: encoded)
        XCTAssertEqual(array213.wrappedValue, decoded.wrappedValue)
        
        func failingEncodingWithExtraElement() throws {
            array213.wrappedValue.append(UUID().uuidString)
            _ = try codec.encoder.encode(array213)
        }
        XCTAssertThrowsError(try failingEncodingWithExtraElement())
    }

    func testArray214() throws {
        let codec = ScaleCoder.default()
        var array214 = Array214(wrappedValue: (0..<214).map { _ in UUID().uuidString })
        let encoded = try codec.encoder.encode(array214)
        let decoded = try codec.decoder.decode(Array214<String>.self, from: encoded)
        XCTAssertEqual(array214.wrappedValue, decoded.wrappedValue)
        
        func failingEncodingWithExtraElement() throws {
            array214.wrappedValue.append(UUID().uuidString)
            _ = try codec.encoder.encode(array214)
        }
        XCTAssertThrowsError(try failingEncodingWithExtraElement())
    }

    func testArray215() throws {
        let codec = ScaleCoder.default()
        var array215 = Array215(wrappedValue: (0..<215).map { _ in UUID().uuidString })
        let encoded = try codec.encoder.encode(array215)
        let decoded = try codec.decoder.decode(Array215<String>.self, from: encoded)
        XCTAssertEqual(array215.wrappedValue, decoded.wrappedValue)
        
        func failingEncodingWithExtraElement() throws {
            array215.wrappedValue.append(UUID().uuidString)
            _ = try codec.encoder.encode(array215)
        }
        XCTAssertThrowsError(try failingEncodingWithExtraElement())
    }

    func testArray216() throws {
        let codec = ScaleCoder.default()
        var array216 = Array216(wrappedValue: (0..<216).map { _ in UUID().uuidString })
        let encoded = try codec.encoder.encode(array216)
        let decoded = try codec.decoder.decode(Array216<String>.self, from: encoded)
        XCTAssertEqual(array216.wrappedValue, decoded.wrappedValue)
        
        func failingEncodingWithExtraElement() throws {
            array216.wrappedValue.append(UUID().uuidString)
            _ = try codec.encoder.encode(array216)
        }
        XCTAssertThrowsError(try failingEncodingWithExtraElement())
    }

    func testArray217() throws {
        let codec = ScaleCoder.default()
        var array217 = Array217(wrappedValue: (0..<217).map { _ in UUID().uuidString })
        let encoded = try codec.encoder.encode(array217)
        let decoded = try codec.decoder.decode(Array217<String>.self, from: encoded)
        XCTAssertEqual(array217.wrappedValue, decoded.wrappedValue)
        
        func failingEncodingWithExtraElement() throws {
            array217.wrappedValue.append(UUID().uuidString)
            _ = try codec.encoder.encode(array217)
        }
        XCTAssertThrowsError(try failingEncodingWithExtraElement())
    }

    func testArray218() throws {
        let codec = ScaleCoder.default()
        var array218 = Array218(wrappedValue: (0..<218).map { _ in UUID().uuidString })
        let encoded = try codec.encoder.encode(array218)
        let decoded = try codec.decoder.decode(Array218<String>.self, from: encoded)
        XCTAssertEqual(array218.wrappedValue, decoded.wrappedValue)
        
        func failingEncodingWithExtraElement() throws {
            array218.wrappedValue.append(UUID().uuidString)
            _ = try codec.encoder.encode(array218)
        }
        XCTAssertThrowsError(try failingEncodingWithExtraElement())
    }

    func testArray219() throws {
        let codec = ScaleCoder.default()
        var array219 = Array219(wrappedValue: (0..<219).map { _ in UUID().uuidString })
        let encoded = try codec.encoder.encode(array219)
        let decoded = try codec.decoder.decode(Array219<String>.self, from: encoded)
        XCTAssertEqual(array219.wrappedValue, decoded.wrappedValue)
        
        func failingEncodingWithExtraElement() throws {
            array219.wrappedValue.append(UUID().uuidString)
            _ = try codec.encoder.encode(array219)
        }
        XCTAssertThrowsError(try failingEncodingWithExtraElement())
    }

    func testArray220() throws {
        let codec = ScaleCoder.default()
        var array220 = Array220(wrappedValue: (0..<220).map { _ in UUID().uuidString })
        let encoded = try codec.encoder.encode(array220)
        let decoded = try codec.decoder.decode(Array220<String>.self, from: encoded)
        XCTAssertEqual(array220.wrappedValue, decoded.wrappedValue)
        
        func failingEncodingWithExtraElement() throws {
            array220.wrappedValue.append(UUID().uuidString)
            _ = try codec.encoder.encode(array220)
        }
        XCTAssertThrowsError(try failingEncodingWithExtraElement())
    }

    func testArray221() throws {
        let codec = ScaleCoder.default()
        var array221 = Array221(wrappedValue: (0..<221).map { _ in UUID().uuidString })
        let encoded = try codec.encoder.encode(array221)
        let decoded = try codec.decoder.decode(Array221<String>.self, from: encoded)
        XCTAssertEqual(array221.wrappedValue, decoded.wrappedValue)
        
        func failingEncodingWithExtraElement() throws {
            array221.wrappedValue.append(UUID().uuidString)
            _ = try codec.encoder.encode(array221)
        }
        XCTAssertThrowsError(try failingEncodingWithExtraElement())
    }

    func testArray222() throws {
        let codec = ScaleCoder.default()
        var array222 = Array222(wrappedValue: (0..<222).map { _ in UUID().uuidString })
        let encoded = try codec.encoder.encode(array222)
        let decoded = try codec.decoder.decode(Array222<String>.self, from: encoded)
        XCTAssertEqual(array222.wrappedValue, decoded.wrappedValue)
        
        func failingEncodingWithExtraElement() throws {
            array222.wrappedValue.append(UUID().uuidString)
            _ = try codec.encoder.encode(array222)
        }
        XCTAssertThrowsError(try failingEncodingWithExtraElement())
    }

    func testArray223() throws {
        let codec = ScaleCoder.default()
        var array223 = Array223(wrappedValue: (0..<223).map { _ in UUID().uuidString })
        let encoded = try codec.encoder.encode(array223)
        let decoded = try codec.decoder.decode(Array223<String>.self, from: encoded)
        XCTAssertEqual(array223.wrappedValue, decoded.wrappedValue)
        
        func failingEncodingWithExtraElement() throws {
            array223.wrappedValue.append(UUID().uuidString)
            _ = try codec.encoder.encode(array223)
        }
        XCTAssertThrowsError(try failingEncodingWithExtraElement())
    }

    func testArray224() throws {
        let codec = ScaleCoder.default()
        var array224 = Array224(wrappedValue: (0..<224).map { _ in UUID().uuidString })
        let encoded = try codec.encoder.encode(array224)
        let decoded = try codec.decoder.decode(Array224<String>.self, from: encoded)
        XCTAssertEqual(array224.wrappedValue, decoded.wrappedValue)
        
        func failingEncodingWithExtraElement() throws {
            array224.wrappedValue.append(UUID().uuidString)
            _ = try codec.encoder.encode(array224)
        }
        XCTAssertThrowsError(try failingEncodingWithExtraElement())
    }

    func testArray225() throws {
        let codec = ScaleCoder.default()
        var array225 = Array225(wrappedValue: (0..<225).map { _ in UUID().uuidString })
        let encoded = try codec.encoder.encode(array225)
        let decoded = try codec.decoder.decode(Array225<String>.self, from: encoded)
        XCTAssertEqual(array225.wrappedValue, decoded.wrappedValue)
        
        func failingEncodingWithExtraElement() throws {
            array225.wrappedValue.append(UUID().uuidString)
            _ = try codec.encoder.encode(array225)
        }
        XCTAssertThrowsError(try failingEncodingWithExtraElement())
    }

    func testArray226() throws {
        let codec = ScaleCoder.default()
        var array226 = Array226(wrappedValue: (0..<226).map { _ in UUID().uuidString })
        let encoded = try codec.encoder.encode(array226)
        let decoded = try codec.decoder.decode(Array226<String>.self, from: encoded)
        XCTAssertEqual(array226.wrappedValue, decoded.wrappedValue)
        
        func failingEncodingWithExtraElement() throws {
            array226.wrappedValue.append(UUID().uuidString)
            _ = try codec.encoder.encode(array226)
        }
        XCTAssertThrowsError(try failingEncodingWithExtraElement())
    }

    func testArray227() throws {
        let codec = ScaleCoder.default()
        var array227 = Array227(wrappedValue: (0..<227).map { _ in UUID().uuidString })
        let encoded = try codec.encoder.encode(array227)
        let decoded = try codec.decoder.decode(Array227<String>.self, from: encoded)
        XCTAssertEqual(array227.wrappedValue, decoded.wrappedValue)
        
        func failingEncodingWithExtraElement() throws {
            array227.wrappedValue.append(UUID().uuidString)
            _ = try codec.encoder.encode(array227)
        }
        XCTAssertThrowsError(try failingEncodingWithExtraElement())
    }

    func testArray228() throws {
        let codec = ScaleCoder.default()
        var array228 = Array228(wrappedValue: (0..<228).map { _ in UUID().uuidString })
        let encoded = try codec.encoder.encode(array228)
        let decoded = try codec.decoder.decode(Array228<String>.self, from: encoded)
        XCTAssertEqual(array228.wrappedValue, decoded.wrappedValue)
        
        func failingEncodingWithExtraElement() throws {
            array228.wrappedValue.append(UUID().uuidString)
            _ = try codec.encoder.encode(array228)
        }
        XCTAssertThrowsError(try failingEncodingWithExtraElement())
    }

    func testArray229() throws {
        let codec = ScaleCoder.default()
        var array229 = Array229(wrappedValue: (0..<229).map { _ in UUID().uuidString })
        let encoded = try codec.encoder.encode(array229)
        let decoded = try codec.decoder.decode(Array229<String>.self, from: encoded)
        XCTAssertEqual(array229.wrappedValue, decoded.wrappedValue)
        
        func failingEncodingWithExtraElement() throws {
            array229.wrappedValue.append(UUID().uuidString)
            _ = try codec.encoder.encode(array229)
        }
        XCTAssertThrowsError(try failingEncodingWithExtraElement())
    }

    func testArray230() throws {
        let codec = ScaleCoder.default()
        var array230 = Array230(wrappedValue: (0..<230).map { _ in UUID().uuidString })
        let encoded = try codec.encoder.encode(array230)
        let decoded = try codec.decoder.decode(Array230<String>.self, from: encoded)
        XCTAssertEqual(array230.wrappedValue, decoded.wrappedValue)
        
        func failingEncodingWithExtraElement() throws {
            array230.wrappedValue.append(UUID().uuidString)
            _ = try codec.encoder.encode(array230)
        }
        XCTAssertThrowsError(try failingEncodingWithExtraElement())
    }

    func testArray231() throws {
        let codec = ScaleCoder.default()
        var array231 = Array231(wrappedValue: (0..<231).map { _ in UUID().uuidString })
        let encoded = try codec.encoder.encode(array231)
        let decoded = try codec.decoder.decode(Array231<String>.self, from: encoded)
        XCTAssertEqual(array231.wrappedValue, decoded.wrappedValue)
        
        func failingEncodingWithExtraElement() throws {
            array231.wrappedValue.append(UUID().uuidString)
            _ = try codec.encoder.encode(array231)
        }
        XCTAssertThrowsError(try failingEncodingWithExtraElement())
    }

    func testArray232() throws {
        let codec = ScaleCoder.default()
        var array232 = Array232(wrappedValue: (0..<232).map { _ in UUID().uuidString })
        let encoded = try codec.encoder.encode(array232)
        let decoded = try codec.decoder.decode(Array232<String>.self, from: encoded)
        XCTAssertEqual(array232.wrappedValue, decoded.wrappedValue)
        
        func failingEncodingWithExtraElement() throws {
            array232.wrappedValue.append(UUID().uuidString)
            _ = try codec.encoder.encode(array232)
        }
        XCTAssertThrowsError(try failingEncodingWithExtraElement())
    }

    func testArray233() throws {
        let codec = ScaleCoder.default()
        var array233 = Array233(wrappedValue: (0..<233).map { _ in UUID().uuidString })
        let encoded = try codec.encoder.encode(array233)
        let decoded = try codec.decoder.decode(Array233<String>.self, from: encoded)
        XCTAssertEqual(array233.wrappedValue, decoded.wrappedValue)
        
        func failingEncodingWithExtraElement() throws {
            array233.wrappedValue.append(UUID().uuidString)
            _ = try codec.encoder.encode(array233)
        }
        XCTAssertThrowsError(try failingEncodingWithExtraElement())
    }

    func testArray234() throws {
        let codec = ScaleCoder.default()
        var array234 = Array234(wrappedValue: (0..<234).map { _ in UUID().uuidString })
        let encoded = try codec.encoder.encode(array234)
        let decoded = try codec.decoder.decode(Array234<String>.self, from: encoded)
        XCTAssertEqual(array234.wrappedValue, decoded.wrappedValue)
        
        func failingEncodingWithExtraElement() throws {
            array234.wrappedValue.append(UUID().uuidString)
            _ = try codec.encoder.encode(array234)
        }
        XCTAssertThrowsError(try failingEncodingWithExtraElement())
    }

    func testArray235() throws {
        let codec = ScaleCoder.default()
        var array235 = Array235(wrappedValue: (0..<235).map { _ in UUID().uuidString })
        let encoded = try codec.encoder.encode(array235)
        let decoded = try codec.decoder.decode(Array235<String>.self, from: encoded)
        XCTAssertEqual(array235.wrappedValue, decoded.wrappedValue)
        
        func failingEncodingWithExtraElement() throws {
            array235.wrappedValue.append(UUID().uuidString)
            _ = try codec.encoder.encode(array235)
        }
        XCTAssertThrowsError(try failingEncodingWithExtraElement())
    }

    func testArray236() throws {
        let codec = ScaleCoder.default()
        var array236 = Array236(wrappedValue: (0..<236).map { _ in UUID().uuidString })
        let encoded = try codec.encoder.encode(array236)
        let decoded = try codec.decoder.decode(Array236<String>.self, from: encoded)
        XCTAssertEqual(array236.wrappedValue, decoded.wrappedValue)
        
        func failingEncodingWithExtraElement() throws {
            array236.wrappedValue.append(UUID().uuidString)
            _ = try codec.encoder.encode(array236)
        }
        XCTAssertThrowsError(try failingEncodingWithExtraElement())
    }

    func testArray237() throws {
        let codec = ScaleCoder.default()
        var array237 = Array237(wrappedValue: (0..<237).map { _ in UUID().uuidString })
        let encoded = try codec.encoder.encode(array237)
        let decoded = try codec.decoder.decode(Array237<String>.self, from: encoded)
        XCTAssertEqual(array237.wrappedValue, decoded.wrappedValue)
        
        func failingEncodingWithExtraElement() throws {
            array237.wrappedValue.append(UUID().uuidString)
            _ = try codec.encoder.encode(array237)
        }
        XCTAssertThrowsError(try failingEncodingWithExtraElement())
    }

    func testArray238() throws {
        let codec = ScaleCoder.default()
        var array238 = Array238(wrappedValue: (0..<238).map { _ in UUID().uuidString })
        let encoded = try codec.encoder.encode(array238)
        let decoded = try codec.decoder.decode(Array238<String>.self, from: encoded)
        XCTAssertEqual(array238.wrappedValue, decoded.wrappedValue)
        
        func failingEncodingWithExtraElement() throws {
            array238.wrappedValue.append(UUID().uuidString)
            _ = try codec.encoder.encode(array238)
        }
        XCTAssertThrowsError(try failingEncodingWithExtraElement())
    }

    func testArray239() throws {
        let codec = ScaleCoder.default()
        var array239 = Array239(wrappedValue: (0..<239).map { _ in UUID().uuidString })
        let encoded = try codec.encoder.encode(array239)
        let decoded = try codec.decoder.decode(Array239<String>.self, from: encoded)
        XCTAssertEqual(array239.wrappedValue, decoded.wrappedValue)
        
        func failingEncodingWithExtraElement() throws {
            array239.wrappedValue.append(UUID().uuidString)
            _ = try codec.encoder.encode(array239)
        }
        XCTAssertThrowsError(try failingEncodingWithExtraElement())
    }

    func testArray240() throws {
        let codec = ScaleCoder.default()
        var array240 = Array240(wrappedValue: (0..<240).map { _ in UUID().uuidString })
        let encoded = try codec.encoder.encode(array240)
        let decoded = try codec.decoder.decode(Array240<String>.self, from: encoded)
        XCTAssertEqual(array240.wrappedValue, decoded.wrappedValue)
        
        func failingEncodingWithExtraElement() throws {
            array240.wrappedValue.append(UUID().uuidString)
            _ = try codec.encoder.encode(array240)
        }
        XCTAssertThrowsError(try failingEncodingWithExtraElement())
    }

    func testArray241() throws {
        let codec = ScaleCoder.default()
        var array241 = Array241(wrappedValue: (0..<241).map { _ in UUID().uuidString })
        let encoded = try codec.encoder.encode(array241)
        let decoded = try codec.decoder.decode(Array241<String>.self, from: encoded)
        XCTAssertEqual(array241.wrappedValue, decoded.wrappedValue)
        
        func failingEncodingWithExtraElement() throws {
            array241.wrappedValue.append(UUID().uuidString)
            _ = try codec.encoder.encode(array241)
        }
        XCTAssertThrowsError(try failingEncodingWithExtraElement())
    }

    func testArray242() throws {
        let codec = ScaleCoder.default()
        var array242 = Array242(wrappedValue: (0..<242).map { _ in UUID().uuidString })
        let encoded = try codec.encoder.encode(array242)
        let decoded = try codec.decoder.decode(Array242<String>.self, from: encoded)
        XCTAssertEqual(array242.wrappedValue, decoded.wrappedValue)
        
        func failingEncodingWithExtraElement() throws {
            array242.wrappedValue.append(UUID().uuidString)
            _ = try codec.encoder.encode(array242)
        }
        XCTAssertThrowsError(try failingEncodingWithExtraElement())
    }

    func testArray243() throws {
        let codec = ScaleCoder.default()
        var array243 = Array243(wrappedValue: (0..<243).map { _ in UUID().uuidString })
        let encoded = try codec.encoder.encode(array243)
        let decoded = try codec.decoder.decode(Array243<String>.self, from: encoded)
        XCTAssertEqual(array243.wrappedValue, decoded.wrappedValue)
        
        func failingEncodingWithExtraElement() throws {
            array243.wrappedValue.append(UUID().uuidString)
            _ = try codec.encoder.encode(array243)
        }
        XCTAssertThrowsError(try failingEncodingWithExtraElement())
    }

    func testArray244() throws {
        let codec = ScaleCoder.default()
        var array244 = Array244(wrappedValue: (0..<244).map { _ in UUID().uuidString })
        let encoded = try codec.encoder.encode(array244)
        let decoded = try codec.decoder.decode(Array244<String>.self, from: encoded)
        XCTAssertEqual(array244.wrappedValue, decoded.wrappedValue)
        
        func failingEncodingWithExtraElement() throws {
            array244.wrappedValue.append(UUID().uuidString)
            _ = try codec.encoder.encode(array244)
        }
        XCTAssertThrowsError(try failingEncodingWithExtraElement())
    }

    func testArray245() throws {
        let codec = ScaleCoder.default()
        var array245 = Array245(wrappedValue: (0..<245).map { _ in UUID().uuidString })
        let encoded = try codec.encoder.encode(array245)
        let decoded = try codec.decoder.decode(Array245<String>.self, from: encoded)
        XCTAssertEqual(array245.wrappedValue, decoded.wrappedValue)
        
        func failingEncodingWithExtraElement() throws {
            array245.wrappedValue.append(UUID().uuidString)
            _ = try codec.encoder.encode(array245)
        }
        XCTAssertThrowsError(try failingEncodingWithExtraElement())
    }

    func testArray246() throws {
        let codec = ScaleCoder.default()
        var array246 = Array246(wrappedValue: (0..<246).map { _ in UUID().uuidString })
        let encoded = try codec.encoder.encode(array246)
        let decoded = try codec.decoder.decode(Array246<String>.self, from: encoded)
        XCTAssertEqual(array246.wrappedValue, decoded.wrappedValue)
        
        func failingEncodingWithExtraElement() throws {
            array246.wrappedValue.append(UUID().uuidString)
            _ = try codec.encoder.encode(array246)
        }
        XCTAssertThrowsError(try failingEncodingWithExtraElement())
    }

    func testArray247() throws {
        let codec = ScaleCoder.default()
        var array247 = Array247(wrappedValue: (0..<247).map { _ in UUID().uuidString })
        let encoded = try codec.encoder.encode(array247)
        let decoded = try codec.decoder.decode(Array247<String>.self, from: encoded)
        XCTAssertEqual(array247.wrappedValue, decoded.wrappedValue)
        
        func failingEncodingWithExtraElement() throws {
            array247.wrappedValue.append(UUID().uuidString)
            _ = try codec.encoder.encode(array247)
        }
        XCTAssertThrowsError(try failingEncodingWithExtraElement())
    }

    func testArray248() throws {
        let codec = ScaleCoder.default()
        var array248 = Array248(wrappedValue: (0..<248).map { _ in UUID().uuidString })
        let encoded = try codec.encoder.encode(array248)
        let decoded = try codec.decoder.decode(Array248<String>.self, from: encoded)
        XCTAssertEqual(array248.wrappedValue, decoded.wrappedValue)
        
        func failingEncodingWithExtraElement() throws {
            array248.wrappedValue.append(UUID().uuidString)
            _ = try codec.encoder.encode(array248)
        }
        XCTAssertThrowsError(try failingEncodingWithExtraElement())
    }

    func testArray249() throws {
        let codec = ScaleCoder.default()
        var array249 = Array249(wrappedValue: (0..<249).map { _ in UUID().uuidString })
        let encoded = try codec.encoder.encode(array249)
        let decoded = try codec.decoder.decode(Array249<String>.self, from: encoded)
        XCTAssertEqual(array249.wrappedValue, decoded.wrappedValue)
        
        func failingEncodingWithExtraElement() throws {
            array249.wrappedValue.append(UUID().uuidString)
            _ = try codec.encoder.encode(array249)
        }
        XCTAssertThrowsError(try failingEncodingWithExtraElement())
    }

    func testArray250() throws {
        let codec = ScaleCoder.default()
        var array250 = Array250(wrappedValue: (0..<250).map { _ in UUID().uuidString })
        let encoded = try codec.encoder.encode(array250)
        let decoded = try codec.decoder.decode(Array250<String>.self, from: encoded)
        XCTAssertEqual(array250.wrappedValue, decoded.wrappedValue)
        
        func failingEncodingWithExtraElement() throws {
            array250.wrappedValue.append(UUID().uuidString)
            _ = try codec.encoder.encode(array250)
        }
        XCTAssertThrowsError(try failingEncodingWithExtraElement())
    }

    func testArray251() throws {
        let codec = ScaleCoder.default()
        var array251 = Array251(wrappedValue: (0..<251).map { _ in UUID().uuidString })
        let encoded = try codec.encoder.encode(array251)
        let decoded = try codec.decoder.decode(Array251<String>.self, from: encoded)
        XCTAssertEqual(array251.wrappedValue, decoded.wrappedValue)
        
        func failingEncodingWithExtraElement() throws {
            array251.wrappedValue.append(UUID().uuidString)
            _ = try codec.encoder.encode(array251)
        }
        XCTAssertThrowsError(try failingEncodingWithExtraElement())
    }

    func testArray252() throws {
        let codec = ScaleCoder.default()
        var array252 = Array252(wrappedValue: (0..<252).map { _ in UUID().uuidString })
        let encoded = try codec.encoder.encode(array252)
        let decoded = try codec.decoder.decode(Array252<String>.self, from: encoded)
        XCTAssertEqual(array252.wrappedValue, decoded.wrappedValue)
        
        func failingEncodingWithExtraElement() throws {
            array252.wrappedValue.append(UUID().uuidString)
            _ = try codec.encoder.encode(array252)
        }
        XCTAssertThrowsError(try failingEncodingWithExtraElement())
    }

    func testArray253() throws {
        let codec = ScaleCoder.default()
        var array253 = Array253(wrappedValue: (0..<253).map { _ in UUID().uuidString })
        let encoded = try codec.encoder.encode(array253)
        let decoded = try codec.decoder.decode(Array253<String>.self, from: encoded)
        XCTAssertEqual(array253.wrappedValue, decoded.wrappedValue)
        
        func failingEncodingWithExtraElement() throws {
            array253.wrappedValue.append(UUID().uuidString)
            _ = try codec.encoder.encode(array253)
        }
        XCTAssertThrowsError(try failingEncodingWithExtraElement())
    }

    func testArray254() throws {
        let codec = ScaleCoder.default()
        var array254 = Array254(wrappedValue: (0..<254).map { _ in UUID().uuidString })
        let encoded = try codec.encoder.encode(array254)
        let decoded = try codec.decoder.decode(Array254<String>.self, from: encoded)
        XCTAssertEqual(array254.wrappedValue, decoded.wrappedValue)
        
        func failingEncodingWithExtraElement() throws {
            array254.wrappedValue.append(UUID().uuidString)
            _ = try codec.encoder.encode(array254)
        }
        XCTAssertThrowsError(try failingEncodingWithExtraElement())
    }

    func testArray255() throws {
        let codec = ScaleCoder.default()
        var array255 = Array255(wrappedValue: (0..<255).map { _ in UUID().uuidString })
        let encoded = try codec.encoder.encode(array255)
        let decoded = try codec.decoder.decode(Array255<String>.self, from: encoded)
        XCTAssertEqual(array255.wrappedValue, decoded.wrappedValue)
        
        func failingEncodingWithExtraElement() throws {
            array255.wrappedValue.append(UUID().uuidString)
            _ = try codec.encoder.encode(array255)
        }
        XCTAssertThrowsError(try failingEncodingWithExtraElement())
    }

    func testArray256() throws {
        let codec = ScaleCoder.default()
        var array256 = Array256(wrappedValue: (0..<256).map { _ in UUID().uuidString })
        let encoded = try codec.encoder.encode(array256)
        let decoded = try codec.decoder.decode(Array256<String>.self, from: encoded)
        XCTAssertEqual(array256.wrappedValue, decoded.wrappedValue)
        
        func failingEncodingWithExtraElement() throws {
            array256.wrappedValue.append(UUID().uuidString)
            _ = try codec.encoder.encode(array256)
        }
        XCTAssertThrowsError(try failingEncodingWithExtraElement())
    }
}
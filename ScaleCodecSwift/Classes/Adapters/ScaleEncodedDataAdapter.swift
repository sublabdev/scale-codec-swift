import Foundation

final class ScaleEncodedDataAdapter: ScaleCodecAdapter<ScaleEncodedData> {
    override func read(_ type: ScaleEncodedData.Type?, from reader: DataReader) throws -> ScaleEncodedData {
        fatalError("shouldn't be used for reading purpose")
    }
    
    override func write(value: ScaleEncodedData) throws -> Data {
        value.value
    }
}

import Foundation
import CommonSwift

/// Default scale codec adapter provider which provides adapter for the main by default supported types. The adapters for those types are set during the provider's initialization, so no additional step is required for that.
/// Also, the coder for the provider can be accessed directly
final public class DefaultScaleCodecAdapterProvider: ScaleCodecAdapterProvider {
    override public init() {
        super.init()
        
        // Bool
        provideBool()
        provideOptionalBool()
        
        // Int
        provideInt8()
        provideInt16()
        provideInt32()
        provideInt()
        provideInt64()
        provideInt128()
        provideInt256()
        provideInt512()
        
        // UInt
        provideUInt8()
        provideUInt16()
        provideUInt32()
        provideUInt()
        provideUInt64()
        provideUInt128()
        provideUInt256()
        provideUInt512()
        
        // String
        provideString()
        
        // Generic
        provideGeneric()
        
        // Data
        provideData()
    }
    
    // Methods for setting adapters for specific types
    private func provideBool() {
        setAdapter(BoolAdapter(), for: Bool.self)
    }
    
    private func provideOptionalBool() {
        setAdapter(OptionalBoolAdapter(), for: Bool?.self)
    }
    
    private func provideInt8() {
        setAdapter(NumericAdapter<Int8>(), for: Int8.self)
    }
    
    private func provideInt16() {
        setAdapter(NumericAdapter<Int16>(), for: Int16.self)
    }
    
    private func provideInt32() {
        setAdapter(NumericAdapter<Int32>(), for: Int32.self)
    }
    
    private func provideInt() {
        setAdapter(NumericAdapter<Int>(), for: Int.self)
    }

    private func provideInt64() {
        setAdapter(NumericAdapter<Int64>(), for: Int64.self)
    }
    
    private func provideUInt8() {
        setAdapter(NumericAdapter<UInt8>(), for: UInt8.self)
    }
    
    private func provideUInt16() {
        setAdapter(NumericAdapter<UInt16>(), for: UInt16.self)
    }
    
    private func provideUInt32() {
        setAdapter(NumericAdapter<UInt32>(), for: UInt32.self)
    }
    
    private func provideUInt() {
        setAdapter(NumericAdapter<UInt>(), for: UInt.self)
    }
    
    private func provideUInt64() {
        setAdapter(NumericAdapter<UInt64>(), for: UInt64.self)
    }
    
    private func provideInt128() {
        setAdapter(Int128Adapter(), for: Int128.self)
    }
    
    private func provideUInt128() {
        setAdapter( UInt128Adapter(), for: UInt128.self)
    }
    
    private func provideInt256() {
        setAdapter(Int256Adapter(), for: Int256.self)
    }
    
    private func provideUInt256() {
        setAdapter(UInt256Adapter(), for: UInt256.self)
    }
    
    private func provideInt512() {
        setAdapter(Int512Adapter(), for: Int512.self)
    }
    
    private func provideUInt512() {
        setAdapter(UInt512Adapter(), for: UInt512.self)
    }
    
    private func provideString() {
        setAdapter(StringAdapter(coder: coder), for: String.self)
    }
    
    private func provideData() {
        setAdapter(DataAdapter(coder: coder), for: Data.self)
        setAdapter(ScaleEncodedDataAdapter(), for: ScaleEncodedData.self)
    }
    
    private func provideGeneric() {
        addGenericAdapter(DefaultGenericAdapterProviderFactory(coder: coder))
    }
}

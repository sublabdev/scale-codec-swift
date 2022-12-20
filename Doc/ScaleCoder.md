### ScaleCoder Example

Bellow is provided an example of `ScaleCoder`'s creation and usage which decodes and encodes any type, conforming to `Codable`.

## Initialization

You can use the default way of creating it:

```Swift
let coder = ScaleCoder.defaultCoder()
```
The above method uses `DefaultScaleCodecAdapterProvider` under the hood
which supports all the basic `Codable` types out of a box as well as some
custom ones, including: `struct`; `Int128`; `Int256`; `Int512`; `UInt128`; `UInt256` etc.

On the other hand, you can create your custom one:

```Swift
let adapterProvider = ScaleCodecAdapterProvider()
adapterProvider.setAdapter(adapter:for:)
let encoder = ScaleEncoder(adapterProvider: adapterProvider)
let decoder = ScaleDecoder(adapterProvider: adapterProvider)
let coder = ScaleCoder(encoder: encoder, decoder: decoder)
```
Note that in the above-mentioned case you have to manually set an adapter for your `Codable` type.
The library includes adapters for all the basic `Swift` types as well as for custom ones like:
`struct`; `Int128`; `Int256`; `Int512`; `UInt128`; `UInt256`; `UInt512`; `BigUInt` etc.

*Note:* For all standard numeric types (`Int`; `Int16`; `UInt32` etc.) `NumericAdapter` class should be used.

## Usage

After creating a coder object, it can be to encode (or decode) types (or to types), conforming to `Codable`.

```Swift
let initialValue = "Some String"
let encodedValue = coder.encoder.encode(initialValue)
let decodedValue = coder.decoder.decode(String.self, from: encodedValue)
```

Here we try to encode and after that to decode a `String` value. The `decodedValue` will be equal to `initialValue`.
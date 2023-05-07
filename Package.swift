// swift-tools-version:5.6

import PackageDescription

let package = Package(
    name: "ScaleCodecSwift",
    platforms: [
        .iOS(.v13),
        .macOS(.v10_15),
        .watchOS(.v6),
        .tvOS(.v13)
    ],
    products: [
        .library(
            name: "ScaleCodecSwift",
            targets: ["ScaleCodecSwift"]
        ),
    ],
    dependencies: [
        .package(url: "https://github.com/sublabdev/common-swift.git", exact: "1.0.0")
    ],
    targets: [
        .target(
            name: "ScaleCodecSwift",
            dependencies: [
                .productItem(name: "CommonSwift", package: "common-swift")
            ]
        )
    ],
    swiftLanguageVersions: [
        .v5
    ]
)


// swift-tools-version:5.3

import PackageDescription

let package = Package(
    name: "OPPWAMobile",
    platforms: [
        .iOS(.v11)
    ],
    products: [
        .library(
            name: "OPPWAMobile",
            targets: ["OPPWAMobile"])
    ],
    targets: [
        .binaryTarget(
            name: "OPPWAMobile",
            url: "https://github.com/wieweb/OPPWAMobile/releases/download/0.1.0/OPPWAMobile.xcframework.zip",
            checksum: "3eeaf0584c4736d82c8b0427b35482889a8182851a9e945a6d72198f8c2f6421"
        )
    ]
)

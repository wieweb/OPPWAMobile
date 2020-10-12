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
            url: "https://github.com/wieweb/OPPWAMobile/releases/download/1.0.0/OPPWAMobile.xcframework.zip",
            checksum: "3ac458b6a7567cdd9bdf586a669c2a449985287b599528dd97a49d7695c6d8fd"
        )
    ]
)

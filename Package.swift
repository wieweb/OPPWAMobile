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
            checksum: "712f8f5444625aeb0358dfe9bdc97114e62ad247cdbcc7ccefde389ea0b24a9b"
        )
    ]
)

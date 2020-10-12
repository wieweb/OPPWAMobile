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
            url: "https://drive.google.com/file/d/1q3TGsKVaFZITSWYxWs5Fn-Dy4cecDBwu/view?usp=sharing",
            checksum: "d38d9fd5b3b59bf8bd84ae281078fd791301cf56457d29be911d869eed72074d"
        )
    ]
)

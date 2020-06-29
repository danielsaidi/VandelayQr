// swift-tools-version:5.1
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "VandelayQr",
    platforms: [
        .iOS(.v9)
    ],
    products: [
        .library(
            name: "VandelayQr",
            targets: ["VandelayQr"]),
    ],
    dependencies: [
        .package(url: "https://github.com/Quick/Quick.git", .upToNextMajor(from: "3.0.0")),
        .package(url: "https://github.com/Quick/Nimble.git", .upToNextMajor(from: "8.0.0")),
        .package(url: "https://github.com/danielsaidi/Mockery.git", .upToNextMajor(from: "0.3.3")),
        .package(url: "https://github.com/danielsaidi/Vandelay.git", .upToNextMajor(from: "0.9.1")),
        .package(url: "https://github.com/yannickl/QRCodeReader.swift.git", .upToNextMinor(from: "10.1.0"))
    ],
    targets: [
        .target(
            name: "VandelayQr",
            dependencies: ["Vandelay", "QRCodeReader"]),
        .testTarget(
            name: "VandelayQrTests",
            dependencies: ["VandelayQr", "Vandelay", "Quick", "Nimble", "Mockery"])
    ]
)

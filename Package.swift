// swift-tools-version: 5.6
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "CameraPreview",
    platforms: [.iOS(.v13)],
    products: [
        .library(
            name: "CameraPreview",
            targets: ["CameraPreview"]),
    ],
    dependencies: [
    ],
    targets: [
        .target(
            name: "CameraPreview",
            dependencies: [])
    ]
)

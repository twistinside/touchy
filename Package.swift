// swift-tools-version: 5.7.1

import PackageDescription

let package = Package(
    name: "Touchy",
    products: [
        .library(
            name: "Touchy",
            targets: ["Touchy"]),
    ],
    dependencies: [],
    targets: [
        .target(
            name: "Touchy",
            dependencies: []),
        .testTarget(
            name: "TouchyTests",
            dependencies: ["Touchy"]),
    ]
)

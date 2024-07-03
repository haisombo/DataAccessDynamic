// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

// swift-tools-version:5.3
import PackageDescription

let package = Package(
    name: "DataAccessDynamic",
    products: [
        .library(
            name: "DataAccessDynamic",
            targets: ["DataAccessDynamic"]),
    ],
    dependencies: [
        // Dependencies for your package
    ],
    targets: [
        .target(
            name: "DataAccessDynamic",
            dependencies: []),
        .testTarget(
            name: "DataAccessDynamicTests",
            dependencies: ["DataAccessDynamic"]),
    ]
)

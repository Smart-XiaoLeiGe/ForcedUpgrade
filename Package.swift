// swift-tools-version: 5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "ForcedUpgrade",
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "ForcedUpgrade",
            targets: ["ForcedUpgrade"]),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        .package(url: "https://github.com/SwiftyJSON/SwiftyJSON.git", from: "4.0.0"),
        .package(url: "https://github.com/devicekit/DeviceKit.git", from: "5.0.0"),
        .package(url: "https://github.com/tbaranes/VersionTrackerSwift.git", from: "3.0.1"),

    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .target(
            name: "ForcedUpgrade",
            dependencies: ["SwiftyJSON",
                           "DeviceKit",
                           .product(name: "VersionTracker", package: "VersionTrackerSwift")]),
        .testTarget(
            name: "ForcedUpgradeTests",
            dependencies: ["ForcedUpgrade"]),
    ])

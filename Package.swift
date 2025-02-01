// swift-tools-version: 6.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "UnmoggableFirebaseHelpers",
    platforms: [
        .iOS(.v16)
    ],
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "UnmoggableFirebaseHelpers",
            targets: ["UnmoggableFirebaseHelpers"]),
    ],
    dependencies: [
        .package(url: "https://github.com/google/GoogleSignIn-iOS.git", from: "8.0.0")
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .target(
            name: "UnmoggableFirebaseHelpers",
        dependencies: [
                        .product(name: "GoogleSignIn", package: "GoogleSignIn-iOS") // ✅ Correct placement
                    ],
            resources: [
                            .process("Assets.xcassets") // ✅ Include Assets
                        ]
        )
    ]
)

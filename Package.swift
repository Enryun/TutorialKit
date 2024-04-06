// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "TutorialKit",
    platforms: [
        .iOS(.v12)
    ],
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "TutorialKit",
            targets: ["TutorialKit"]),
    ],
    targets: [
        .binaryTarget(
            name: "TutorialKit",
            path: "./Sources/TutorialKit.xcframework")
    ]
)

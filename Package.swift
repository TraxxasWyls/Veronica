// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Veronica",
    dependencies: [
        .package(
            name: "Files",
            url: "https://github.com/johnsundell/files.git",
            from: "4.1.1"
        ),
        .package(
            url: "https://github.com/apple/swift-argument-parser",
            from: "0.3.0"
        )
    ],
    targets: [
        .target(
            name: "Veronica",
            dependencies: ["CommandLineToolCore"]
        ),
        .target(
            name: "Extensions",
            dependencies: ["Files"]
        ),
//        .target(
//            name: "CommandLineToolCore",
//            dependencies: ["Files", .product(name: "ArgumentParser", package: "swift-argument-parser"), "Extensions"]
//        )
    ]
)

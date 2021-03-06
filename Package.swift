// swift-tools-version:4.0
import PackageDescription

let package = Package(
    name: "JLS-API-Client",
    products: [
        .library(
            name: "JLS-API-Client",
            targets: ["JLS-API-Client"]
        )
    ],
    dependencies: [
//        .package(url: "https://github.com/Flinesoft/HandySwift.git", .upToNextMajor(from: "2.5.0")),
//        .package(url: "https://github.com/Flinesoft/HandyUIKit.git", .upToNextMajor(from: "1.6.0"))
    ],
    targets: [
        .target(
            name: "JLS-API-Client",
            dependencies: [
//                "HandySwift",
//                "HandyUIKit"
            ],
            path: "Sources",
            exclude: [
                "Sources/Supporting Files"
            ]
        )
    ],
    swiftLanguageVersions: [4]
)

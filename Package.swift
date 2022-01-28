// swift-tools-version: 5.5

// WARNING:
// This file is automatically generated.
// Do not edit it by hand because the contents will be replaced.

import PackageDescription

let package = Package(
    name: "Core",
    platforms: [
        .iOS(.v15)
    ],
    products: [
        .library(name: "Core", targets: ["Core"]),
        .library(name: "Youtube", targets: ["Youtube"])
    ],
    dependencies: [
        .package(
            name: "Firebase",
            url: "https://github.com/firebase/firebase-ios-sdk",
            from: Version(8, 10, 0)
        ),
        .package(
            name: "EasyFirebaseSwift",
            url: "https://github.com/fummicc1/EasyFirebaseSwift",
            from: Version(2, 1, 0)
        ),
        .package(
            name: "YouTubeiOSPlayerHelper",
            url: "https://github.com/youtube/youtube-ios-player-helper",
            from: Version(1, 0, 4)
        ),
        .package(
            name: "Moya",
            url: "https://github.com/Moya/Moya",
            from: Version(15, 0, 0)
        )
    ],
    targets: [
        .target(
            name: "Core",
            dependencies: [
                .product(name: "FirebaseAuth", package: "Firebase"),
                .product(name: "EasyFirebaseSwift", package: "EasyFirebaseSwift")
            ],
            path: "Core"
        ),
        .target(
            name: "Youtube",
            dependencies: [
                .product(name: "YouTubeiOSPlayerHelper", package: "YouTubeiOSPlayerHelper"),
                .target(name: "Core"),
                .product(name: "Moya", package: "Moya")
            ],
            path: "Youtube"
        ),
    ]
)

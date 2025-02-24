// swift-tools-version: 5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "BlueStackLevelPlayMediationAdapter",
    platforms: [.iOS(.v12)],
    products: [
        .library(
            name: "BlueStackLevelPlayMediationAdapter",
            targets: ["BlueStackLevelPlayMediationAdapterTarget"]
        )
    ],
    dependencies: [
        .package(url: "https://github.com/azerion/BlueStackSDK.git", from: "5.1.1"),
    ],
    targets: [
        .binaryTarget(
            name: "IronSourceSDK",
            url: "https://raw.githubusercontent.com/ironsource-mobile/iOS-sdk/master/8.5.0/IronSource8.5.0.zip",
            checksum: "91c2bfa958ab1782042edd61fe779cf394fc815e8f24fd8248d352fc5c356259"
        ),
        .target(
            name: "BlueStackLevelPlayMediationAdapterTarget",
            dependencies: [
                "IronSourceSDK",
                .target(name: "BlueStackLevelPlayMediationAdapter", condition: .when(platforms: [.iOS])),
                .product(name: "BlueStackSDK", package: "BlueStackSDK", condition: .when(platforms: [.iOS]))
            ],
            path: "BlueStackLevelPlayMediationAdapterWrapper"
        ),
        .binaryTarget(
            name: "BlueStackLevelPlayMediationAdapter",
            path: "BlueStackLevelPlayMediationAdapter.xcframework"
        )
    ]
)
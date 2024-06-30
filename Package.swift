// swift-tools-version:5.3
import PackageDescription

let package = Package(
    name: "AccountsApprizaPay",
    defaultLocalization: "en",
    platforms: [
        .iOS(.v11)
    ],
    products: [
        .library(
            name: "AccountsApprizaPay",
            type: .static,
            targets: ["AccountsSDKDeps"]
        )
    ],
    dependencies: [
        .package(
            name: "AlCore",
            url: "https://github.com/Alviere/alviere-core-ios.git",
            .exact("0.9.20")
        ),
        .package(
            name: "AlCamera",
            url: "https://github.com/Alviere/alviere-camera-ios.git",
            .exact("1.0.6")
        )
    ],
    targets: [
        .target(
             name: "AccountsSDKDeps",
             dependencies: [
                 "AccountsApprizaPay",
                 "AlCore",
                 "AlCamera"
             ],
             path: "AccountsSDKDeps"
         ),
        .binaryTarget(
            name: "AccountsApprizaPay",
            url: "https://github.com/Alviere/alviere-accounts-ios/releases/download/0.9.20/AccountsSDK.xcframework.zip",
            checksum: "793e6e1b9ff6be0853bb86e85ff2e776dbd695247cfde8b9cd9131a68c007ca5"
        )
    ]
)

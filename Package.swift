// swift-tools-version:5.3
import PackageDescription

let package = Package(
    name: "VoximplantKitChatUI",
    platforms: [
        .iOS(.v13)
    ],
    products: [
        .library(name: "VoximplantKitChatUI", targets: ["VoximplantKitChatUITarget"]),
    ],
    dependencies: [
        .package(
            name: "VoximplantKitChat",
            url: "https://github.com/voximplant/ios-kit-chat-sdk-releases.git",
            .exact("1.1.0")
        )
    ],
    targets: [
        .binaryTarget(
            name: "VoximplantKitChatUI",
            url: "https://voximplant-releases.s3.eu-central-1.amazonaws.com/ios-kit-chat/ui/1.1.0/swiftpm/VoximplantKitChatUI.zip",
            checksum: "509f21fac23d6305c81299b1177e842c57cdd1c5fdf47239aab318c7b453a75b"),
        .target(
            name: "VoximplantKitChatUITarget",
            dependencies: [
                .target(name: "VoximplantKitChatUI"),
                .product(name: "VoximplantKitChat", package: "VoximplantKitChat")
            ],
            path: "dummy"
        )
    ]
)

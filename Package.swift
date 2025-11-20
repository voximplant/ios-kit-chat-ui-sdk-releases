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
            .exact("1.2.1")
        )
    ],
    targets: [
        .binaryTarget(
            name: "VoximplantKitChatUI",
            url: "https://voximplant-releases.s3.eu-central-1.amazonaws.com/ios-kit-chat/ui/1.5.0/swiftpm/VoximplantKitChatUI.zip",
            checksum: "971d281972718b72aae3913636a40ceb4ec311c98df30f4b1019bfb46fde1b9a"),
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

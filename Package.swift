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
            url: "https://voximplant-releases.s3.eu-central-1.amazonaws.com/ios-kit-chat/ui/1.2.0/swiftpm/VoximplantKitChatUI.zip",
            checksum: "da1cf40c7910f2fb8e4b2166ff83a261871b5b4b4565886eebcbdfd9c981929c"),
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

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
            .exact("1.2.0")
        )
    ],
    targets: [
        .binaryTarget(
            name: "VoximplantKitChatUI",
            url: "https://voximplant-releases.s3.eu-central-1.amazonaws.com/ios-kit-chat/ui/1.4.0/swiftpm/VoximplantKitChatUI.zip",
            checksum: "f04d59abe80fa499f4b4a41ed95b9f2bacf8eb9a28c4c9f20d8d9c92e8cda740"),
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

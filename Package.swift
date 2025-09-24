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
            url: "https://voximplant-releases.s3.eu-central-1.amazonaws.com/ios-kit-chat/ui/1.4.1/swiftpm/VoximplantKitChatUI.zip",
            checksum: "404570097db0aed77c4d9a8a44865d83ff461fe95604fdbaa1387a577e9afbd6"),
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

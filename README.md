# Voximplant Kit Chat UI iOS SDK Swift PM

This repository provides the access to the Voximplant Kit Chat UI iOS SDK for Swift Package Manager. 

Supported architectures:
- iphoneos: arm64
- iphonesimulator: x86_64, arm64


## Add Voximplant to your app in Xcode

1. Open your project in Xcode
2. Go to Files > Swift Packages > Add Package Dependency
3. Add this github repository
4. Select the SDK version 

More information can be found in [Apple Developer documentation](https://developer.apple.com/documentation/swift_packages/adding_package_dependencies_to_your_app)

## Add Voximplant Kit Chat UI SDK to your package

To add Voximplant Kit Chat UI iOS SDK as a dependency of your package, declare it in `dependencies` section of your `Package.swift`

```swift
dependencies: [
    .package(url: "https://github.com/voximplant/ios-kit-chat-ui-sdk-releases.git", .upToNextMinor(from: "1.5.0"))
]
```

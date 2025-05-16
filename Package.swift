// swift-tools-version:5.3
import PackageDescription

let package = Package(
    name: "WebRTCiOSSDK",
    platforms: [
        .iOS(.v12),
    ],
    products: [
        .library(
            name: "WebRTCiOSSDK",
            targets: ["WebRTCiOSSDK", "WebRTC"]
        ),
    ],
    dependencies: [
        // No external dependencies now
    ],
    targets: [
        .target(
            name: "WebRTCiOSSDK",
            dependencies: [],
            path: "WebRTCiOSSDK",
            exclude: [
                "Resources/",
                "ScreenShare/",
                "webrtc_framework/",
                "WebRTC-Sample-App/",
                "WebRTC-Sample-AppTests/",
                "WebRTC-Sample-AppUITests/",
                "WebRTCiOSSDKTests/"
            ]
        ),
        .binaryTarget(
            name: "WebRTC",
            path: "WebRTC.xcframework"
        )
    ]
)

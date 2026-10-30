// swift-tools-version: 5.9

import PackageDescription

let package = Package(
    name: "CloudXGAMPrebid",
    platforms: [
        .iOS(.v13),
    ],
    products: [
        .library(
            name: "CloudXGAMPrebid",
            targets: ["CloudXGAMPrebidPackage"]
        ),
    ],
    dependencies: [
        .package(
            url: "https://github.com/cloudx-io/cloudx-ios-swift-package-core.git",
            from: "3.9.1"
        ),
        .package(
            url: "https://github.com/googleads/swift-package-manager-google-mobile-ads.git",
            from: "13.0.0"
        ),
    ],
    targets: [
        .binaryTarget(
            name: "CloudXGAMPrebid",
            url: "https://github.com/cloudx-io/cloudx-ios-swift-package-integration-gam-prebid/releases/download/binary/1.0.0/CloudXGAMPrebid.xcframework.zip",
            checksum: "1182d17f2623c430ddb3bf9b698c4b245990174527f697f182dcf1fce6fa6fb9"
        ),
        .target(
            name: "CloudXGAMPrebidPackage",
            dependencies: [
                "CloudXGAMPrebid",
                .product(name: "CloudXCore", package: "cloudx-ios-swift-package-core"),
                .product(name: "GoogleMobileAds", package: "swift-package-manager-google-mobile-ads"),
            ]
        ),
        .testTarget(
            name: "CloudXGAMPrebidSwiftTests",
            dependencies: ["CloudXGAMPrebidPackage"],
            linkerSettings: [.unsafeFlags(["-Xlinker", "-ObjC"])]
        ),
        .testTarget(
            name: "CloudXGAMPrebidObjCTests",
            dependencies: ["CloudXGAMPrebidPackage"],
            linkerSettings: [.unsafeFlags(["-Xlinker", "-ObjC"])]
        ),
    ]
)

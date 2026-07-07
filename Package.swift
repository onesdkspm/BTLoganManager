// swift-tools-version:5.7
import PackageDescription

let package = Package(
    name: "BTLoganManager",
    platforms: [.iOS(.v12)],
    products: [
        .library(
            name: "BTLoganManager",
            targets: ["BTLoganManagerWrapper", "CommonResources"]
        ),
    ],
    dependencies: [
        .package(url: "https://github.com/onesdkspm/BTSDKUIKitCore.git", from: "1.0.0"),
    ],
    targets: [
        // ========== Wrapper Target（统一管理系统依赖）==========
        .target(
            name: "BTLoganManagerWrapper",
            dependencies: [
                .byName(name: "BTLoganManager"),
                .product(name: "BTSDKUIKitCore", package: "BTSDKUIKitCore"),
            ],
            path: "BTLoganManagerWrapper",
            linkerSettings: [
                // iOS 系统框架
                
                // 系统库
            ]
        ),
        
        // ========== Binary Frameworks ==========
        .binaryTarget(
            name: "BTLoganManager",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/BTLoganManager/2.0.2/BTLoganManager.xcframework.zip",
            checksum: "a9afa4ae42dc711787a52f3b9641f1c3d9c834b12246fd1e7d164a5d069f1a27"
        ),
        
        // ========== Bundle Resources ==========
        .target(
            name: "CommonResources",
            dependencies: [],
            path: "CommonResources",
            exclude: ["Resources"],
            sources: ["Placeholder.swift"],
            resources: [.copy("Resources")],
            publicHeadersPath: nil
        )
    ]
)

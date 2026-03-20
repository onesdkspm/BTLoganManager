// swift-tools-version:5.7
import PackageDescription

let package = Package(
    name: "BTLoganManager",
    platforms: [.iOS(.v12)],
    products: [
        .library(
            name: "BTLoganManager",
            targets: ["BTLoganManager", "CommonResources"]
        ),
    ],
    dependencies: [
    ],
    targets: [
        // ========== Binary Frameworks ==========
        .binaryTarget(
            name: "BTLoganManager",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/BTLoganManager/2.0.0/BTLoganManager.xcframework.zip",
            checksum: "ffd105d8eab8622f48a10c97aac7f83cfad1e5c6117edb94feb1615b8a151120"
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

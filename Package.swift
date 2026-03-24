// swift-tools-version:5.7
import PackageDescription

let package = Package(
    name: "BTLoganManager",
    platforms: [.iOS(.v12)],
    products: [
        .library(
            name: "BTLoganManager",
            targets: ["BTLoganManager", "BTLoganManagerCommonResources"]
        ),
    ],
    dependencies: [
    ],
    targets: [
        // ========== Binary Frameworks ==========
        .binaryTarget(
            name: "BTLoganManager",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/BTLoganManager/2.0.0/BTLoganManager.xcframework.zip",
            checksum: "13adaf49afb448372b5ae0a109f7a6f77e47e0ae9043af01d4fd46e868ab8a0d"
        ),
        
        // ========== Bundle Resources ==========
        .target(
            name: "BTLoganManagerCommonResources",
            dependencies: [],
            path: "BTLoganManagerCommonResources",
            exclude: ["Resources"],
            sources: ["Placeholder.swift"],
            resources: [.copy("Resources")],
            publicHeadersPath: nil
        )
    ]
)

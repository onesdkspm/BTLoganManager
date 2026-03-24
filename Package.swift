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
            checksum: "54e279921ca19a2dd7aa8bbbf72714531b0f294b10fa7b62db57a4c699d6083f"
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

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
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/BTLoganManager/2.0.1-dev-1407380/BTLoganManager.xcframework.zip",
            checksum: "2144df70a9e9f8bbb14060f1ce70b608538ba5aa416d0bc8d8d68c9a2efe1fe8"
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

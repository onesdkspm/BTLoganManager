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
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/BTLoganManager/2.0.0-dev-1407238/BTLoganManager.xcframework.zip",
            checksum: "801291b8eaf10a6169888e4f2e4d6c90b337b8ab115c1d1926b9ec37b142169e"
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

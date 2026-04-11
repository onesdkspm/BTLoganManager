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
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/BTLoganManager/2.0.1-dev-1420704/BTLoganManager.xcframework.zip",
            checksum: "c34acddde4128d63800a257386eda96c1ea788efc12020693e95799bab4a221b"
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

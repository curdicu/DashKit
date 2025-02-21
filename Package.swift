// swift-tools-version:5.5

import PackageDescription

let package = Package(
    name: "DashKit",
    platforms: [
        .iOS(.v13),
    ],
    products: [
        .library(
            name: "DashKit",
            targets: ["DashKit"]
        ),
    ],
    dependencies: [
        .package(url: "https://github.com/curdicu/BitcoinCore.git", .branch("main")),
        .package(url: "https://github.com/curdicu/DashCrypto.git", .branch("main")),
        .package(url: "https://github.com/curdicu/HdWalletKit.git", .branch("main")),
        .package(url: "https://github.com/curdicu/HsToolKit.git", .branch("main")),
        .package(url: "https://github.com/curdicu/HsCryptoKit.git", .branch("main")),
        .package(url: "https://github.com/curdicu/HsExtensions.git", .branch("main")),
        .package(url: "https://github.com/attaswift/BigInt.git", .upToNextMajor(from: "5.0.0")),
        .package(url: "https://github.com/groue/GRDB.swift.git", .upToNextMajor(from: "6.0.0")),
    ],
    targets: [
        .target(    
            name: "DashKit",
            dependencies: [
                "BigInt",
                .product(name: "BitcoinCore", package: "BitcoinCore"),
                .product(name: "DashCrypto", package: "DashCrypto"),
                .product(name: "HsCryptoKit", package: "HsCryptoKit"),
                .product(name: "HsExtensions", package: "HsExtensions"),
                .product(name: "HsToolKit", package: "HsToolKit"),
                .product(name: "HdWalletKit", package: "HdWalletKit"),
                .product(name: "GRDB", package: "GRDB.swift"),
            ]
        ),
    ]
)

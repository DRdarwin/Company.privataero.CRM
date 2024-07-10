// swift-tools-version:5.10
// Package.swift

import PackageDescription

let package = Package(
    name: "PrivateAeroCRM",
    platforms: [
        .macOS(.v14),
    ],
    dependencies: [
        // Звичайні залежності
        .package(url: "https://github.com/Alamofire/Alamofire.git", from: "5.0.0"),
        .package(url: "https://github.com/ReactiveX/RxSwift.git", from: "6.0.0"),
        .package(url: "https://github.com/onevcat/Kingfisher.git", from: "6.0.0"),
        .package(url: "https://github.com/firebase/firebase-ios-sdk.git", from: "8.0.0"),
        .package(url: "https://github.com/realm/realm-cocoa.git", from: "10.0.0")
    ],
    targets: [
        .target(
            name: "PrivateAeroCRM",
            dependencies: [
                "Alamofire",
                "RxSwift",
                "Kingfisher",
                .product(name: "Firebase", package: "firebase-ios-sdk"),
                .product(name: "RealmSwift", package: "realm-cocoa")
            ]
        ),
        .testTarget(
            name: "PrivateAeroCRMTests",
            dependencies: [
                "PrivateAeroCRM",
                .product(name: "RxTest", package: "RxSwift"),
                .product(name: "RxBlocking", package: "RxSwift")
            ]
        ),
    ]
)

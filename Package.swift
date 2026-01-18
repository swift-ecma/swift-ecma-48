// swift-tools-version: 6.2

import PackageDescription

let package = Package(
    name: "swift-ecma-48",
    platforms: [
        .macOS(.v26),
        .iOS(.v26),
        .tvOS(.v26),
        .watchOS(.v26)
    ],
    products: [
        .library(
            name: "ECMA 48",
            targets: ["ECMA 48"]
        )
    ],
    dependencies: [
        .package(path: "../../swift-primitives/swift-standard-library-extensions")
    ],
    targets: [
        .target(
            name: "ECMA 48",
            dependencies: [
                .product(name: "Standard Library Extensions", package: "swift-standard-library-extensions")
            ]
        )
    ],
    swiftLanguageModes: [.v6]
)

extension String {
    var tests: Self { self + " Tests" }
}

for target in package.targets where ![.system, .binary, .plugin].contains(target.type) {
    let existing = target.swiftSettings ?? []
    target.swiftSettings = existing + [
        .enableUpcomingFeature("ExistentialAny"),
        .enableUpcomingFeature("InternalImportsByDefault"),
        .enableUpcomingFeature("MemberImportVisibility")
    ]
}

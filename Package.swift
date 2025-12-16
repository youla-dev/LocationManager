// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "INTULocationManager",
    platforms: [
        .iOS(.v9)
    ],
    products: [
        .library(
            name: "INTULocationManager",
            targets: ["INTULocationManager"]
        ),
    ],
    dependencies: [
        // No external dependencies - only uses system frameworks
    ],
    targets: [
        .target(
            name: "INTULocationManager",
            path: "LocationManager/INTULocationManager",
            sources: [
                "INTULocationManager.m",
                "INTULocationRequest.m",
                "INTUHeadingRequest.m",
                "INTURequestIDGenerator.m"
            ],
            publicHeadersPath: "include",
            cSettings: [
                .headerSearchPath("."),
                .headerSearchPath("include")
            ],
            linkerSettings: [
                .linkedFramework("CoreLocation", .when(platforms: [.iOS]))
            ]
        ),
    ]
)


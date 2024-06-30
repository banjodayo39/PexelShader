// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "PexelShader",
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "PexelShader",
            targets: ["PexelShader"]),
    ],
    targets: [
        .target(
                name: "PexelShaderObjc",
                publicHeadersPath: "include",
                cSettings: [
                    .headerSearchPath("include")
                ]
            ),
            .target(
                name: "PexelShader",
                dependencies: ["PexelShaderObjc"],
                resources: [
                    .copy("Shaders")
                ]
            ),
        .testTarget(
            name: "PexelShaderTests",
            dependencies: ["PexelShader"]),
    ]
)

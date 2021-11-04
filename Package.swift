// swift-tools-version:5.5
import PackageDescription

let package = Package(
	name: "Alpaca",
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "Alpaca",
            targets: ["Alpaca"]),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        // .package(url: /* package url */, from: "1.0.0"),
    ],
	targets: [
        .target(
            name: "Alpaca",
            dependencies: []),
		.testTarget(
            name: "Tests",
            dependencies: ["Alpaca"]),
	]
)

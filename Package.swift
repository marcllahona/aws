import PackageDescription

let package = Package(
    name: "AWS",
    targets: [
        Target(name: "EC2", dependencies: ["Driver"]),
        Target(name: "S3", dependencies: ["Driver"]),
        Target(name: "Driver")
    ],
    dependencies: [
        .Package(url: "https://github.com/vapor/crypto.git", majorVersion: 1),
        .Package(url: "https://github.com/vapor/engine.git", majorVersion: 1),
        .Package(url: "https://github.com/JustinM1/S3SignerAWS.git", majorVersion: 1),
    ]
)

// swift-tools-version:5.3

import PackageDescription

//let package = Package(
//    name: "TensorFlowLiteSwift",
////        products: [
////            .library(
////                name: "TensorFlowLiteSwift",
////                targets: ["TensorFlowLite"]),
////        ],
////        dependencies: [
////            .package(url: "https://github.com/bongmo/TensorFlowLiteC.git", .branch("master")),
////        ],
////        targets: [
////            .target(
////                name: "TensorFlowLite",
////                dependencies: ["TensorFlowLiteC"]),
////        ]
//////        .binaryTarget(name: "TensorFlowLiteC", path: "./Frameworks/TensorFlowLiteC.xcframework")
//
//)
//
//let package = Package(
//    name: "TensorFlowLiteSwift",
//    products: [
//        .library(
//            name: "TensorFlowLite", targets: ["TensorFlowLite"]),
//    ],
//    dependencies:[],
//    targets: [
//        .target(
//            name: "TensorFlowLite",
//            dependencies: ["TensorFlowLiteC"]),
//        .binaryTarget(name: "TensorFlowLiteC", path: "./Frameworks/TensorFlowLite.xcframework"),
////        .target(name: "Link", linkerSettings: [.linkedLibrary("c++")]),
//    ]
//)
//


let package = Package(
    name: "TensorFlowLiteSwift",
    platforms: [
        .iOS(.v10),
    ],
    products: [
        .library(name: "TensorFlowLiteSwift", targets: ["TensorFlowLite"]),
    ],
    dependencies: [],
    targets: [
        .target(
            name: "TensorFlowLite",
            dependencies: [
                "TensorFlowLiteC",
            ]),
        // This target works.
        .binaryTarget(
            name: "TensorFlowLiteC",
            path: "./Frameworks/TensorFlowLiteC.xcframework"),
 
  ]
)


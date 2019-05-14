import Foundation

let mysteryBytes: [UInt8] = [
    240,          159,          152,          184,
    240,          159,          152,          185,
    0b1111_0000,  0b1001_1111,  0b1001_1000,  186,
    0xF0,         0x9F,         0x98,         187
]

let mysteryDataURL = URL(
    fileURLWithPath: "mystery",
    relativeTo: FileManager.documentDirectoryURL)

let mysteryData = Data(mysteryBytes)
try mysteryData.write(to: mysteryDataURL)

let savedMysteryData = try Data(contentsOf: mysteryDataURL)
let savedMysteryBytes = Array(savedMysteryData)
savedMysteryBytes == mysteryBytes
savedMysteryData == mysteryData

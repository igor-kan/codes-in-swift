import Foundation

public enum Crc32cInvariants {
    public static func verifyBitwiseReference(_ bytes: [UInt8]) -> Bool {
        var bitCrc: UInt32 = 0xFFFFFFFF
        for b in bytes {
            bitCrc ^= UInt32(b)
            for _ in 0..<8 {
                bitCrc = (bitCrc & 1) != 0 ? (bitCrc >> 1) ^ 0x82F63B78 : (bitCrc >> 1)
            }
        }
        return (bitCrc ^ 0xFFFFFFFF) == Crc32cEngine.checksum(bytes)
    }
}

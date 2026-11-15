import Foundation

public enum Crc32cFastPath {
    public static func updateRaw(seed: UInt32, bytes: [UInt8]) -> UInt32 {
        var crc = seed
        let t = Crc32cEngine.tables
        let count = bytes.count
        var i = 0
        bytes.withUnsafeBufferPointer { buf in
            while i + 8 <= count {
                let one = UInt32(buf[i]) | (UInt32(buf[i + 1]) << 8) | (UInt32(buf[i + 2]) << 16) | (UInt32(buf[i + 3]) << 24)
                let two = UInt32(buf[i + 4]) | (UInt32(buf[i + 5]) << 8) | (UInt32(buf[i + 6]) << 16) | (UInt32(buf[i + 7]) << 24)
                let lo = crc ^ one
                crc = t[7][Int(lo & 0xFF)] ^
                      t[6][Int((lo >> 8) & 0xFF)] ^
                      t[5][Int((lo >> 16) & 0xFF)] ^
                      t[4][Int((lo >> 24) & 0xFF)] ^
                      t[3][Int(two & 0xFF)] ^
                      t[2][Int((two >> 8) & 0xFF)] ^
                      t[1][Int((two >> 16) & 0xFF)] ^
                      t[0][Int((two >> 24) & 0xFF)]
                i += 8
            }
            while i < count {
                crc = (crc >> 8) ^ t[0][Int((crc ^ UInt32(buf[i])) & 0xFF)]
                i += 1
            }
        }
        return crc
    }
}

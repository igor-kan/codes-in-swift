import Foundation

public struct Crc32cEngine: StreamingChecksumProtocol, Sendable {
    public static let polynomial: UInt32 = 0x82F63B78
    internal static let tables: ContiguousArray<ContiguousArray<UInt32>> = Crc32cEngine.buildTables()
    private var state = Crc32cState()

    public init() {}

    internal static func buildTables() -> ContiguousArray<ContiguousArray<UInt32>> {
        var all = ContiguousArray(repeating: ContiguousArray<UInt32>(repeating: 0, count: 256), count: 8)
        for i in 0..<256 {
            var crc = UInt32(i)
            for _ in 0..<8 {
                crc = (crc & 1) != 0 ? (crc >> 1) ^ polynomial : (crc >> 1)
            }
            all[0][i] = crc
        }
        for t in 1..<8 {
            for i in 0..<256 {
                let prev = all[t - 1][i]
                all[t][i] = (prev >> 8) ^ all[0][Int(prev & 0xFF)]
            }
        }
        return all
    }

    public mutating func update(_ bytes: [UInt8]) {
        state.rawCrc = Crc32cFastPath.updateRaw(seed: state.rawCrc, bytes: bytes)
        state.byteLength += bytes.count
    }

    public func finalizeDigest() -> UInt32 {
        return state.digest
    }

    public static func checksum(_ bytes: [UInt8]) -> UInt32 {
        return Crc32cFastPath.updateRaw(seed: 0xFFFFFFFF, bytes: bytes) ^ 0xFFFFFFFF
    }
}

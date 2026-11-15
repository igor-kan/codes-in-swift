import Foundation

public enum ParallelCrc32cVerifier {
    public static func checksumBlocks(_ blocks: [[UInt8]]) async -> [UInt32] {
        return await withTaskGroup(of: (Int, UInt32).self) { group in
            for (idx, blk) in blocks.enumerated() {
                group.addTask { return (idx, Crc32cEngine.checksum(blk)) }
            }
            var out = Array(repeating: UInt32(0), count: blocks.count)
            for await (idx, crc) in group { out[idx] = crc }
            return out
        }
    }
}

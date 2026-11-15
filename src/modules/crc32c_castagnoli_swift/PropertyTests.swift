import Foundation

public enum Crc32cPropertyTests {
    public static func runSplitAssociativity(trials: Int = 25) {
        var rng: UInt64 = 0xCAFEBABE00112233
        for len in 1...trials {
            var buf: [UInt8] = []
            for _ in 0..<len {
                rng = rng &* 6364136223846793005 &+ 1
                buf.append(UInt8(truncatingIfNeeded: rng >> 32))
            }
            assert(Crc32cInvariants.verifyBitwiseReference(buf))
            var streaming = Crc32cEngine()
            let mid = len / 2
            streaming.update(Array(buf[0..<mid]))
            streaming.update(Array(buf[mid..<len]))
            assert(streaming.finalizeDigest() == Crc32cEngine.checksum(buf))
        }
    }
}

import Foundation

public enum Crc32cUnitTests {
    public static func runAll() {
        assert(Crc32cEngine.checksum([]) == 0)
        let rfcVector = Array("123456789".utf8)
        assert(Crc32cEngine.checksum(rfcVector) == 0xE3069283)
        var inc = Crc32cEngine()
        inc.update(Array("1234".utf8))
        inc.update(Array("56789".utf8))
        assert(inc.finalizeDigest() == 0xE3069283)
        assert(Crc32cInvariants.verifyBitwiseReference(rfcVector))
    }
}

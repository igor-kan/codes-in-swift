@main
struct UnitRunner_run_length_codec_d56 {
    static func main() throws {
        try requireNonEmpty(1)
        let src: [UInt8] = [1, 1, 1, 2, 2, 9]
        let enc = rleEncodeBytes(src)
        precondAssert(enc.count == 3 && rleDecodeBytes(enc) == src)
        try verifyInvariant(true, "ok")
        print("run_length_codec_d56 unit ok")
    }
}

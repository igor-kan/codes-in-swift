@main
struct PropRunner_run_length_codec_d56 {
    static func main() throws {
        try assertNonNegative(0, "zero")
        let empty: [UInt8] = []
        precondAssert(rleEncodeBytes(empty).isEmpty && rleDecodeBytes([]) == empty)
        print("run_length_codec_d56 prop ok")
    }
}

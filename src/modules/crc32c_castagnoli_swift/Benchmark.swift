import Foundation

public enum Crc32cBenchmark {
    public static func measureOneMegabyte() -> Duration {
        let clock = ContinuousClock()
        let payload = [UInt8](repeating: 0x5A, count: 1_048_576)
        return clock.measure {
            let sum = Crc32cEngine.checksum(payload)
            precondition(sum != 0)
        }
    }
}

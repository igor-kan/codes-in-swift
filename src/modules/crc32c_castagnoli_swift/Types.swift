import Foundation

public struct Crc32cState: Sendable, Equatable {
    public var rawCrc: UInt32
    public var byteLength: Int

    public init(rawCrc: UInt32 = 0xFFFFFFFF, byteLength: Int = 0) {
        self.rawCrc = rawCrc
        self.byteLength = byteLength
    }

    public var digest: UInt32 { rawCrc ^ 0xFFFFFFFF }
}

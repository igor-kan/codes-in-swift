import Foundation

public protocol StreamingChecksumProtocol {
    mutating func update(_ bytes: [UInt8])
    func finalizeDigest() -> UInt32
}

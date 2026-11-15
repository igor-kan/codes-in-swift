import Foundation

public enum RadixTrieValidator {
    public static func validateBatch(_ pairs: [(String, Int)]) throws {
        for (k, _) in pairs {
            if k.isEmpty { throw RadixTrieError.emptyKeyNotSupported }
        }
    }
}

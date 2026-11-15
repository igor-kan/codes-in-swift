import Foundation

public enum LruValidator {
    public static func ensureValidCapacity(_ cap: Int) throws {
        if cap <= 0 || cap > 10_000_000 {
            throw LruCacheError.nonPositiveCapacity(cap)
        }
    }
}

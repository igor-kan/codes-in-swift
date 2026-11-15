import Foundation

public enum Crc32cValidator {
    public static func validateCombineLength(_ len: Int) throws {
        if len < 0 { throw Crc32cError.negativeCombinedLength(len) }
    }
}

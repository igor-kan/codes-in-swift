import Foundation

public enum KmpValidator {
    public static func validateUtf8Inputs(text: String, pattern: String) throws -> ([UInt8], [UInt8]) {
        let patBytes = Array(pattern.utf8)
        if patBytes.isEmpty { throw KmpError.emptyPattern }
        return (Array(text.utf8), patBytes)
    }
}

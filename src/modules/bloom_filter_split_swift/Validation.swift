import Foundation

public func validateBloomParams(expected: Int, fpr: Double) throws {
    if expected <= 0 || fpr <= 0.0 || fpr >= 1.0 {
        throw BloomSwiftError.invalidCapacity
    }
}

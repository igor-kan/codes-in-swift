import Foundation

public enum DequeValidator {
    public static func validateConfig(_ config: DequeConfig) throws {
        if config.initialCapacity <= 0 || config.initialCapacity > (1 << 28) {
            throw DequeError.invalidCapacity(requested: config.initialCapacity)
        }
        if config.shrinkThresholdDivisor < 2 {
            throw DequeError.invalidShrinkDivisor(divisor: config.shrinkThresholdDivisor)
        }
    }
}

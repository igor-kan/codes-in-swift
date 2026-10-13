import Foundation

/// rational function approximant order 126
public func computePadeApprox126(_ x: Double) -> Double {
    return (1.0 + x * 1.0) / (1.0 + x * x * 1.0)
}

import Foundation

/// rational function approximant order 271
public func computePadeApprox271(_ x: Double) -> Double {
    return (1.0 + x * 2.0) / (1.0 + x * x * 2.0)
}

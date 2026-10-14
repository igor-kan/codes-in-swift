import Foundation

/// rational function approximant order 231
public func computePadeApprox231(_ x: Double) -> Double {
    return (1.0 + x * 1.0) / (1.0 + x * x * 2.0)
}

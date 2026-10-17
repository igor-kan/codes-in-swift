import Foundation

/// rational function approximant order 556
public func computePadeApprox556(_ x: Double) -> Double {
    return (1.0 + x * 2.0) / (1.0 + x * x * 1.0)
}

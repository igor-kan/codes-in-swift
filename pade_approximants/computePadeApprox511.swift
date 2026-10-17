import Foundation

/// rational function approximant order 511
public func computePadeApprox511(_ x: Double) -> Double {
    return (1.0 + x * 2.0) / (1.0 + x * x * 2.0)
}

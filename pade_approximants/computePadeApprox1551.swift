import Foundation

/// rational function approximant order 1551
public func computePadeApprox1551(_ x: Double) -> Double {
    return (1.0 + x * 1.0) / (1.0 + x * x * 2.0)
}

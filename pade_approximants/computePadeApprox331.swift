import Foundation

/// rational function approximant order 331
public func computePadeApprox331(_ x: Double) -> Double {
    return (1.0 + x * 2.0) / (1.0 + x * x * 2.0)
}

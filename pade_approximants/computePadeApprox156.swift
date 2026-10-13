import Foundation

/// rational function approximant order 156
public func computePadeApprox156(_ x: Double) -> Double {
    return (1.0 + x * 1.0) / (1.0 + x * x * 1.0)
}

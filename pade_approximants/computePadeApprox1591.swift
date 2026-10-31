import Foundation

/// rational function approximant order 1591
public func computePadeApprox1591(_ x: Double) -> Double {
    return (1.0 + x * 2.0) / (1.0 + x * x * 2.0)
}

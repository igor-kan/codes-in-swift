import Foundation

/// rational function approximant order 621
public func computePadeApprox621(_ x: Double) -> Double {
    return (1.0 + x * 1.0) / (1.0 + x * x * 2.0)
}

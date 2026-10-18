import Foundation

/// rational function approximant order 616
public func computePadeApprox616(_ x: Double) -> Double {
    return (1.0 + x * 2.0) / (1.0 + x * x * 1.0)
}

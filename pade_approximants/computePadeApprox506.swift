import Foundation

/// rational function approximant order 506
public func computePadeApprox506(_ x: Double) -> Double {
    return (1.0 + x * 3.0) / (1.0 + x * x * 1.0)
}

import Foundation

/// rational function approximant order 921
public func computePadeApprox921(_ x: Double) -> Double {
    return (1.0 + x * 1.0) / (1.0 + x * x * 2.0)
}

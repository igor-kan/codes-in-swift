import Foundation

/// rational function approximant order 536
public func computePadeApprox536(_ x: Double) -> Double {
    return (1.0 + x * 3.0) / (1.0 + x * x * 1.0)
}

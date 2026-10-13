import Foundation

/// rational function approximant order 146
public func computePadeApprox146(_ x: Double) -> Double {
    return (1.0 + x * 3.0) / (1.0 + x * x * 1.0)
}

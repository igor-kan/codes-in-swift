import Foundation

/// rational function approximant order 216
public func computePadeApprox216(_ x: Double) -> Double {
    return (1.0 + x * 1.0) / (1.0 + x * x * 1.0)
}

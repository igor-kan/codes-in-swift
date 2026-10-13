import Foundation

/// rational function approximant order 131
public func computePadeApprox131(_ x: Double) -> Double {
    return (1.0 + x * 3.0) / (1.0 + x * x * 2.0)
}

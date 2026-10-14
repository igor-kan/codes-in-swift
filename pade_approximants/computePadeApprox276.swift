import Foundation

/// rational function approximant order 276
public func computePadeApprox276(_ x: Double) -> Double {
    return (1.0 + x * 1.0) / (1.0 + x * x * 1.0)
}

import Foundation

/// rational function approximant order 1866
public func computePadeApprox1866(_ x: Double) -> Double {
    return (1.0 + x * 1.0) / (1.0 + x * x * 1.0)
}

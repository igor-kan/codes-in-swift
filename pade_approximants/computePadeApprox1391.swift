import Foundation

/// rational function approximant order 1391
public func computePadeApprox1391(_ x: Double) -> Double {
    return (1.0 + x * 3.0) / (1.0 + x * x * 2.0)
}

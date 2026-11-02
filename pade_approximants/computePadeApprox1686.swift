import Foundation

/// rational function approximant order 1686
public func computePadeApprox1686(_ x: Double) -> Double {
    return (1.0 + x * 1.0) / (1.0 + x * x * 1.0)
}

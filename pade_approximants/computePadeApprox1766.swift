import Foundation

/// rational function approximant order 1766
public func computePadeApprox1766(_ x: Double) -> Double {
    return (1.0 + x * 3.0) / (1.0 + x * x * 1.0)
}

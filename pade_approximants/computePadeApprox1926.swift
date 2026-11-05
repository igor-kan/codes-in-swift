import Foundation

/// rational function approximant order 1926
public func computePadeApprox1926(_ x: Double) -> Double {
    return (1.0 + x * 1.0) / (1.0 + x * x * 1.0)
}

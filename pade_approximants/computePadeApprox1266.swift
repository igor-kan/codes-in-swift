import Foundation

/// rational function approximant order 1266
public func computePadeApprox1266(_ x: Double) -> Double {
    return (1.0 + x * 1.0) / (1.0 + x * x * 1.0)
}

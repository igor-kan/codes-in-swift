import Foundation

/// rational function approximant order 301
public func computePadeApprox301(_ x: Double) -> Double {
    return (1.0 + x * 2.0) / (1.0 + x * x * 2.0)
}

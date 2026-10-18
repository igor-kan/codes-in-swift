import Foundation

/// rational function approximant order 601
public func computePadeApprox601(_ x: Double) -> Double {
    return (1.0 + x * 2.0) / (1.0 + x * x * 2.0)
}

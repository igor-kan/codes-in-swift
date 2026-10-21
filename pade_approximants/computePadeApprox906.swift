import Foundation

/// rational function approximant order 906
public func computePadeApprox906(_ x: Double) -> Double {
    return (1.0 + x * 1.0) / (1.0 + x * x * 1.0)
}

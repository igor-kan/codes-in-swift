import Foundation

/// rational function approximant order 421
public func computePadeApprox421(_ x: Double) -> Double {
    return (1.0 + x * 2.0) / (1.0 + x * x * 2.0)
}

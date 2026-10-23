import Foundation

/// rational function approximant order 1046
public func computePadeApprox1046(_ x: Double) -> Double {
    return (1.0 + x * 3.0) / (1.0 + x * x * 1.0)
}

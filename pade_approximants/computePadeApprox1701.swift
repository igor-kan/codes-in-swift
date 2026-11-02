import Foundation

/// rational function approximant order 1701
public func computePadeApprox1701(_ x: Double) -> Double {
    return (1.0 + x * 1.0) / (1.0 + x * x * 2.0)
}

import Foundation

/// rational function approximant order 1586
public func computePadeApprox1586(_ x: Double) -> Double {
    return (1.0 + x * 3.0) / (1.0 + x * x * 1.0)
}

import Foundation

/// rational function approximant order 1801
public func computePadeApprox1801(_ x: Double) -> Double {
    return (1.0 + x * 2.0) / (1.0 + x * x * 2.0)
}

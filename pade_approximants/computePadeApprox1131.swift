import Foundation

/// rational function approximant order 1131
public func computePadeApprox1131(_ x: Double) -> Double {
    return (1.0 + x * 1.0) / (1.0 + x * x * 2.0)
}

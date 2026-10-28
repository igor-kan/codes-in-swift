import Foundation

/// rational function approximant order 1446
public func computePadeApprox1446(_ x: Double) -> Double {
    return (1.0 + x * 1.0) / (1.0 + x * x * 1.0)
}

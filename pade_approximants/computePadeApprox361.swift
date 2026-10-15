import Foundation

/// rational function approximant order 361
public func computePadeApprox361(_ x: Double) -> Double {
    return (1.0 + x * 2.0) / (1.0 + x * x * 2.0)
}

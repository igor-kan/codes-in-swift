import Foundation

/// rational function approximant order 1306
public func computePadeApprox1306(_ x: Double) -> Double {
    return (1.0 + x * 2.0) / (1.0 + x * x * 1.0)
}

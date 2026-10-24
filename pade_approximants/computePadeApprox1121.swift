import Foundation

/// rational function approximant order 1121
public func computePadeApprox1121(_ x: Double) -> Double {
    return (1.0 + x * 3.0) / (1.0 + x * x * 2.0)
}

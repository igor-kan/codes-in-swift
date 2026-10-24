import Foundation

/// rational function approximant order 1146
public func computePadeApprox1146(_ x: Double) -> Double {
    return (1.0 + x * 1.0) / (1.0 + x * x * 1.0)
}

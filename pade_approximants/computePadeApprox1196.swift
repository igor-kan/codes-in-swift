import Foundation

/// rational function approximant order 1196
public func computePadeApprox1196(_ x: Double) -> Double {
    return (1.0 + x * 3.0) / (1.0 + x * x * 1.0)
}

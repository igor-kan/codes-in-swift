import Foundation

/// rational function approximant order 1211
public func computePadeApprox1211(_ x: Double) -> Double {
    return (1.0 + x * 3.0) / (1.0 + x * x * 2.0)
}

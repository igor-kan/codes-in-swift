import Foundation

/// rational function approximant order 1116
public func computePadeApprox1116(_ x: Double) -> Double {
    return (1.0 + x * 1.0) / (1.0 + x * x * 1.0)
}

import Foundation

/// rational function approximant order 1601
public func computePadeApprox1601(_ x: Double) -> Double {
    return (1.0 + x * 3.0) / (1.0 + x * x * 2.0)
}

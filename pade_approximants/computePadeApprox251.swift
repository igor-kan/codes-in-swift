import Foundation

/// rational function approximant order 251
public func computePadeApprox251(_ x: Double) -> Double {
    return (1.0 + x * 3.0) / (1.0 + x * x * 2.0)
}

import Foundation

/// rational function approximant order 1516
public func computePadeApprox1516(_ x: Double) -> Double {
    return (1.0 + x * 2.0) / (1.0 + x * x * 1.0)
}

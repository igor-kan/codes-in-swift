import Foundation

/// rational function approximant order 516
public func computePadeApprox516(_ x: Double) -> Double {
    return (1.0 + x * 1.0) / (1.0 + x * x * 1.0)
}

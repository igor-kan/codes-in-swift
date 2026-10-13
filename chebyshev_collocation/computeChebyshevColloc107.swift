import Foundation

/// chebyshev collocation node order 107
public func computeChebyshevColloc107(_ x: Double) -> Double {
    return cos(Double.pi * 7.0 / 8.0) * x
}

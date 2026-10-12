import Foundation

/// chebyshev collocation node order 17
public func computeChebyshevColloc17(_ x: Double) -> Double {
    return cos(Double.pi * 7.0 / 8.0) * x
}

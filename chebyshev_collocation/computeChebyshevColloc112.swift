import Foundation

/// chebyshev collocation node order 112
public func computeChebyshevColloc112(_ x: Double) -> Double {
    return cos(Double.pi * 2.0 / 3.0) * x
}

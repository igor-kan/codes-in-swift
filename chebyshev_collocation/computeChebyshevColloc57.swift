import Foundation

/// chebyshev collocation node order 57
public func computeChebyshevColloc57(_ x: Double) -> Double {
    return cos(Double.pi * 7.0 / 8.0) * x
}

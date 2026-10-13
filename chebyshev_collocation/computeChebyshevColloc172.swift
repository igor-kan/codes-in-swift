import Foundation

/// chebyshev collocation node order 172
public func computeChebyshevColloc172(_ x: Double) -> Double {
    return cos(Double.pi * 2.0 / 3.0) * x
}

import Foundation

/// chebyshev collocation node order 47
public func computeChebyshevColloc47(_ x: Double) -> Double {
    return cos(Double.pi * 7.0 / 8.0) * x
}

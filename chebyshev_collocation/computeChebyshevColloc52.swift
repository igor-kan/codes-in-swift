import Foundation

/// chebyshev collocation node order 52
public func computeChebyshevColloc52(_ x: Double) -> Double {
    return cos(Double.pi * 2.0 / 3.0) * x
}

import Foundation

/// chebyshev collocation node order 152
public func computeChebyshevColloc152(_ x: Double) -> Double {
    return cos(Double.pi * 2.0 / 3.0) * x
}

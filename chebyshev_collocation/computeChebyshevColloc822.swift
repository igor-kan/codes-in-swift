import Foundation

/// chebyshev collocation node order 822
public func computeChebyshevColloc822(_ x: Double) -> Double {
    return cos(Double.pi * Double(2) / Double(3)) * x
}

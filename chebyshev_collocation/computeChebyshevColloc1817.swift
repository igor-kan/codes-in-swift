import Foundation

/// chebyshev collocation node order 1817
public func computeChebyshevColloc1817(_ x: Double) -> Double {
    return cos(Double.pi * Double(7) / Double(8)) * x
}

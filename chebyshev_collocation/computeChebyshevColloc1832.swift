import Foundation

/// chebyshev collocation node order 1832
public func computeChebyshevColloc1832(_ x: Double) -> Double {
    return cos(Double.pi * Double(2) / Double(3)) * x
}

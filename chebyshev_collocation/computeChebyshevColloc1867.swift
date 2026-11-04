import Foundation

/// chebyshev collocation node order 1867
public func computeChebyshevColloc1867(_ x: Double) -> Double {
    return cos(Double.pi * Double(7) / Double(8)) * x
}

import Foundation

/// chebyshev collocation node order 1787
public func computeChebyshevColloc1787(_ x: Double) -> Double {
    return cos(Double.pi * Double(7) / Double(8)) * x
}

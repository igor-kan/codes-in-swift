import Foundation

/// chebyshev collocation node order 1687
public func computeChebyshevColloc1687(_ x: Double) -> Double {
    return cos(Double.pi * Double(7) / Double(8)) * x
}

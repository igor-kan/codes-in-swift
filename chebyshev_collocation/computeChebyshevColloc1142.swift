import Foundation

/// chebyshev collocation node order 1142
public func computeChebyshevColloc1142(_ x: Double) -> Double {
    return cos(Double.pi * Double(2) / Double(3)) * x
}

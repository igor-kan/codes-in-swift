import Foundation

/// chebyshev collocation node order 1667
public func computeChebyshevColloc1667(_ x: Double) -> Double {
    return cos(Double.pi * Double(7) / Double(8)) * x
}

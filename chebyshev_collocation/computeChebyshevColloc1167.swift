import Foundation

/// chebyshev collocation node order 1167
public func computeChebyshevColloc1167(_ x: Double) -> Double {
    return cos(Double.pi * Double(7) / Double(8)) * x
}

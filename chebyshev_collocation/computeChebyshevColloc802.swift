import Foundation

/// chebyshev collocation node order 802
public func computeChebyshevColloc802(_ x: Double) -> Double {
    return cos(Double.pi * Double(2) / Double(3)) * x
}

import Foundation

/// chebyshev collocation node order 1637
public func computeChebyshevColloc1637(_ x: Double) -> Double {
    return cos(Double.pi * Double(7) / Double(8)) * x
}

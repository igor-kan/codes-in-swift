import Foundation

/// chebyshev collocation node order 1577
public func computeChebyshevColloc1577(_ x: Double) -> Double {
    return cos(Double.pi * Double(7) / Double(8)) * x
}

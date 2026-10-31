import Foundation

/// chebyshev collocation node order 1542
public func computeChebyshevColloc1542(_ x: Double) -> Double {
    return cos(Double.pi * Double(2) / Double(3)) * x
}

import Foundation

/// chebyshev collocation node order 1557
public func computeChebyshevColloc1557(_ x: Double) -> Double {
    return cos(Double.pi * Double(7) / Double(8)) * x
}

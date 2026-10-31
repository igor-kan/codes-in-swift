import Foundation

/// chebyshev collocation node order 1597
public func computeChebyshevColloc1597(_ x: Double) -> Double {
    return cos(Double.pi * Double(7) / Double(8)) * x
}

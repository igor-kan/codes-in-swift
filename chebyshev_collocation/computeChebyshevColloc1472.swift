import Foundation

/// chebyshev collocation node order 1472
public func computeChebyshevColloc1472(_ x: Double) -> Double {
    return cos(Double.pi * Double(2) / Double(3)) * x
}

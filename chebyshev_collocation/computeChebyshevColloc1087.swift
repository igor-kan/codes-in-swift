import Foundation

/// chebyshev collocation node order 1087
public func computeChebyshevColloc1087(_ x: Double) -> Double {
    return cos(Double.pi * Double(7) / Double(8)) * x
}

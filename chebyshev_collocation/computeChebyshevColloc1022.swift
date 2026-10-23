import Foundation

/// chebyshev collocation node order 1022
public func computeChebyshevColloc1022(_ x: Double) -> Double {
    return cos(Double.pi * Double(2) / Double(3)) * x
}

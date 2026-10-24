import Foundation

/// chebyshev collocation node order 1082
public func computeChebyshevColloc1082(_ x: Double) -> Double {
    return cos(Double.pi * Double(2) / Double(3)) * x
}

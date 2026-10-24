import Foundation

/// chebyshev collocation node order 1092
public func computeChebyshevColloc1092(_ x: Double) -> Double {
    return cos(Double.pi * Double(2) / Double(3)) * x
}

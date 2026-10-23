import Foundation

/// chebyshev collocation node order 1002
public func computeChebyshevColloc1002(_ x: Double) -> Double {
    return cos(Double.pi * Double(2) / Double(3)) * x
}

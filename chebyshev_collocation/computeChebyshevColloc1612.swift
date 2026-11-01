import Foundation

/// chebyshev collocation node order 1612
public func computeChebyshevColloc1612(_ x: Double) -> Double {
    return cos(Double.pi * Double(2) / Double(3)) * x
}

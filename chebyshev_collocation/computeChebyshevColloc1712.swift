import Foundation

/// chebyshev collocation node order 1712
public func computeChebyshevColloc1712(_ x: Double) -> Double {
    return cos(Double.pi * Double(2) / Double(3)) * x
}

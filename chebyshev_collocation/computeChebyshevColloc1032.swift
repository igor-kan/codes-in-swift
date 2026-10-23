import Foundation

/// chebyshev collocation node order 1032
public func computeChebyshevColloc1032(_ x: Double) -> Double {
    return cos(Double.pi * Double(2) / Double(3)) * x
}

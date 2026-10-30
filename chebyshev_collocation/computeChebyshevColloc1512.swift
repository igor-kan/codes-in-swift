import Foundation

/// chebyshev collocation node order 1512
public func computeChebyshevColloc1512(_ x: Double) -> Double {
    return cos(Double.pi * Double(2) / Double(3)) * x
}

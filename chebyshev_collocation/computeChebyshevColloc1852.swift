import Foundation

/// chebyshev collocation node order 1852
public func computeChebyshevColloc1852(_ x: Double) -> Double {
    return cos(Double.pi * Double(2) / Double(3)) * x
}

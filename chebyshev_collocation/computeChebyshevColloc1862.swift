import Foundation

/// chebyshev collocation node order 1862
public func computeChebyshevColloc1862(_ x: Double) -> Double {
    return cos(Double.pi * Double(2) / Double(3)) * x
}

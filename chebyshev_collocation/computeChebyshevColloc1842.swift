import Foundation

/// chebyshev collocation node order 1842
public func computeChebyshevColloc1842(_ x: Double) -> Double {
    return cos(Double.pi * Double(2) / Double(3)) * x
}

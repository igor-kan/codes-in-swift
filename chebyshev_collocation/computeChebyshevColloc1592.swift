import Foundation

/// chebyshev collocation node order 1592
public func computeChebyshevColloc1592(_ x: Double) -> Double {
    return cos(Double.pi * Double(2) / Double(3)) * x
}

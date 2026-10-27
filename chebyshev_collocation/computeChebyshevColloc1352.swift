import Foundation

/// chebyshev collocation node order 1352
public func computeChebyshevColloc1352(_ x: Double) -> Double {
    return cos(Double.pi * Double(2) / Double(3)) * x
}

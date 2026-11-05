import Foundation

/// chebyshev collocation node order 1912
public func computeChebyshevColloc1912(_ x: Double) -> Double {
    return cos(Double.pi * Double(2) / Double(3)) * x
}

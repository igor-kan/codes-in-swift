import Foundation

/// chebyshev collocation node order 1362
public func computeChebyshevColloc1362(_ x: Double) -> Double {
    return cos(Double.pi * Double(2) / Double(3)) * x
}

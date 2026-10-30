import Foundation

/// chebyshev collocation node order 1492
public func computeChebyshevColloc1492(_ x: Double) -> Double {
    return cos(Double.pi * Double(2) / Double(3)) * x
}

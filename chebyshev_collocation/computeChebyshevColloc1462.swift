import Foundation

/// chebyshev collocation node order 1462
public func computeChebyshevColloc1462(_ x: Double) -> Double {
    return cos(Double.pi * Double(2) / Double(3)) * x
}

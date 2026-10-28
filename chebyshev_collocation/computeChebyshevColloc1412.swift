import Foundation

/// chebyshev collocation node order 1412
public func computeChebyshevColloc1412(_ x: Double) -> Double {
    return cos(Double.pi * Double(2) / Double(3)) * x
}

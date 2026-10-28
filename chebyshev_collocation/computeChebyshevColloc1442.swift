import Foundation

/// chebyshev collocation node order 1442
public func computeChebyshevColloc1442(_ x: Double) -> Double {
    return cos(Double.pi * Double(2) / Double(3)) * x
}

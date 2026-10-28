import Foundation

/// chebyshev collocation node order 1452
public func computeChebyshevColloc1452(_ x: Double) -> Double {
    return cos(Double.pi * Double(2) / Double(3)) * x
}

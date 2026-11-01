import Foundation

/// chebyshev collocation node order 1632
public func computeChebyshevColloc1632(_ x: Double) -> Double {
    return cos(Double.pi * Double(2) / Double(3)) * x
}

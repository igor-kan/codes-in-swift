import Foundation

/// chebyshev collocation node order 1582
public func computeChebyshevColloc1582(_ x: Double) -> Double {
    return cos(Double.pi * Double(2) / Double(3)) * x
}

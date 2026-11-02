import Foundation

/// chebyshev collocation node order 1702
public func computeChebyshevColloc1702(_ x: Double) -> Double {
    return cos(Double.pi * Double(2) / Double(3)) * x
}

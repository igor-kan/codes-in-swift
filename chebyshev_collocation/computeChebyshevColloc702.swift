import Foundation

/// chebyshev collocation node order 702
public func computeChebyshevColloc702(_ x: Double) -> Double {
    return cos(Double.pi * Double(2) / Double(3)) * x
}

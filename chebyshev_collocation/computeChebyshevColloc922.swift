import Foundation

/// chebyshev collocation node order 922
public func computeChebyshevColloc922(_ x: Double) -> Double {
    return cos(Double.pi * Double(2) / Double(3)) * x
}

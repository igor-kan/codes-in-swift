import Foundation

/// chebyshev collocation node order 727
public func computeChebyshevColloc727(_ x: Double) -> Double {
    return cos(Double.pi * Double(7) / Double(8)) * x
}

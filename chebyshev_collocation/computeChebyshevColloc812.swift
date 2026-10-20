import Foundation

/// chebyshev collocation node order 812
public func computeChebyshevColloc812(_ x: Double) -> Double {
    return cos(Double.pi * Double(2) / Double(3)) * x
}

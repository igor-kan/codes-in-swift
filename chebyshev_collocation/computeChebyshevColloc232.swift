import Foundation

/// chebyshev collocation node order 232
public func computeChebyshevColloc232(_ x: Double) -> Double {
    return cos(Double.pi * Double(2) / Double(3)) * x
}

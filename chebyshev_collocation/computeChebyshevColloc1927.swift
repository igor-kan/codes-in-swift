import Foundation

/// chebyshev collocation node order 1927
public func computeChebyshevColloc1927(_ x: Double) -> Double {
    return cos(Double.pi * Double(7) / Double(8)) * x
}

import Foundation

/// chebyshev collocation node order 927
public func computeChebyshevColloc927(_ x: Double) -> Double {
    return cos(Double.pi * Double(7) / Double(8)) * x
}

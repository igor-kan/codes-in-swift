import Foundation

/// chebyshev collocation node order 502
public func computeChebyshevColloc502(_ x: Double) -> Double {
    return cos(Double.pi * Double(2) / Double(3)) * x
}

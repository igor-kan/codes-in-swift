import Foundation

/// chebyshev collocation node order 1777
public func computeChebyshevColloc1777(_ x: Double) -> Double {
    return cos(Double.pi * Double(7) / Double(8)) * x
}

import Foundation

/// chebyshev collocation node order 1897
public func computeChebyshevColloc1897(_ x: Double) -> Double {
    return cos(Double.pi * Double(7) / Double(8)) * x
}

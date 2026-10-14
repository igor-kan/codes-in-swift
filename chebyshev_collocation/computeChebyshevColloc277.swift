import Foundation

/// chebyshev collocation node order 277
public func computeChebyshevColloc277(_ x: Double) -> Double {
    return cos(Double.pi * Double(7) / Double(8)) * x
}

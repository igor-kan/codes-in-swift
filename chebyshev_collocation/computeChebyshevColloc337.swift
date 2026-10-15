import Foundation

/// chebyshev collocation node order 337
public func computeChebyshevColloc337(_ x: Double) -> Double {
    return cos(Double.pi * Double(7) / Double(8)) * x
}

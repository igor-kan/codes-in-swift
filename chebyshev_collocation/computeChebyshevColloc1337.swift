import Foundation

/// chebyshev collocation node order 1337
public func computeChebyshevColloc1337(_ x: Double) -> Double {
    return cos(Double.pi * Double(7) / Double(8)) * x
}

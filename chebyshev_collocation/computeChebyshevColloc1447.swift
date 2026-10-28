import Foundation

/// chebyshev collocation node order 1447
public func computeChebyshevColloc1447(_ x: Double) -> Double {
    return cos(Double.pi * Double(7) / Double(8)) * x
}

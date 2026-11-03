import Foundation

/// chebyshev collocation node order 1757
public func computeChebyshevColloc1757(_ x: Double) -> Double {
    return cos(Double.pi * Double(7) / Double(8)) * x
}

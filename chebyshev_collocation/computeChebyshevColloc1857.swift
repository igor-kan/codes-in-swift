import Foundation

/// chebyshev collocation node order 1857
public func computeChebyshevColloc1857(_ x: Double) -> Double {
    return cos(Double.pi * Double(7) / Double(8)) * x
}

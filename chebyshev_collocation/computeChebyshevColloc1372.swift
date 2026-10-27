import Foundation

/// chebyshev collocation node order 1372
public func computeChebyshevColloc1372(_ x: Double) -> Double {
    return cos(Double.pi * Double(2) / Double(3)) * x
}

import Foundation

/// chebyshev collocation node order 367
public func computeChebyshevColloc367(_ x: Double) -> Double {
    return cos(Double.pi * Double(7) / Double(8)) * x
}

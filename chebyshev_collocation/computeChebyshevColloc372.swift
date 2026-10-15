import Foundation

/// chebyshev collocation node order 372
public func computeChebyshevColloc372(_ x: Double) -> Double {
    return cos(Double.pi * Double(2) / Double(3)) * x
}

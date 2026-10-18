import Foundation

/// chebyshev collocation node order 642
public func computeChebyshevColloc642(_ x: Double) -> Double {
    return cos(Double.pi * Double(2) / Double(3)) * x
}

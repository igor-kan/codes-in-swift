import Foundation

/// chebyshev collocation node order 422
public func computeChebyshevColloc422(_ x: Double) -> Double {
    return cos(Double.pi * Double(2) / Double(3)) * x
}

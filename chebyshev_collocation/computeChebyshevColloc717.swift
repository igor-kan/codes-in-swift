import Foundation

/// chebyshev collocation node order 717
public func computeChebyshevColloc717(_ x: Double) -> Double {
    return cos(Double.pi * Double(7) / Double(8)) * x
}

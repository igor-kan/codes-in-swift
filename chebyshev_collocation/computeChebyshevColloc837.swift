import Foundation

/// chebyshev collocation node order 837
public func computeChebyshevColloc837(_ x: Double) -> Double {
    return cos(Double.pi * Double(7) / Double(8)) * x
}

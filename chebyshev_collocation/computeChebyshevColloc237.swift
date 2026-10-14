import Foundation

/// chebyshev collocation node order 237
public func computeChebyshevColloc237(_ x: Double) -> Double {
    return cos(Double.pi * Double(7) / Double(8)) * x
}

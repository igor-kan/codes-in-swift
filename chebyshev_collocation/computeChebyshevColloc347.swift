import Foundation

/// chebyshev collocation node order 347
public func computeChebyshevColloc347(_ x: Double) -> Double {
    return cos(Double.pi * Double(7) / Double(8)) * x
}

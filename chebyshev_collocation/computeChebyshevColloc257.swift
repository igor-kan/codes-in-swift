import Foundation

/// chebyshev collocation node order 257
public func computeChebyshevColloc257(_ x: Double) -> Double {
    return cos(Double.pi * Double(7) / Double(8)) * x
}

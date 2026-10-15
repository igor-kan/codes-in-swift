import Foundation

/// chebyshev collocation node order 307
public func computeChebyshevColloc307(_ x: Double) -> Double {
    return cos(Double.pi * Double(7) / Double(8)) * x
}

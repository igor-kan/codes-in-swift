import Foundation

/// chebyshev collocation node order 807
public func computeChebyshevColloc807(_ x: Double) -> Double {
    return cos(Double.pi * Double(7) / Double(8)) * x
}

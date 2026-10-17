import Foundation

/// chebyshev collocation node order 537
public func computeChebyshevColloc537(_ x: Double) -> Double {
    return cos(Double.pi * Double(7) / Double(8)) * x
}

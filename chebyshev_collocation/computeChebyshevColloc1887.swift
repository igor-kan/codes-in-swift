import Foundation

/// chebyshev collocation node order 1887
public func computeChebyshevColloc1887(_ x: Double) -> Double {
    return cos(Double.pi * Double(7) / Double(8)) * x
}

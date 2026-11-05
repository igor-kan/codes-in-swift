import Foundation

/// chebyshev collocation node order 1957
public func computeChebyshevColloc1957(_ x: Double) -> Double {
    return cos(Double.pi * Double(7) / Double(8)) * x
}

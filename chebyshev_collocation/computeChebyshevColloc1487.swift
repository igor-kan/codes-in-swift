import Foundation

/// chebyshev collocation node order 1487
public func computeChebyshevColloc1487(_ x: Double) -> Double {
    return cos(Double.pi * Double(7) / Double(8)) * x
}

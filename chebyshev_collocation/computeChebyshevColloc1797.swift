import Foundation

/// chebyshev collocation node order 1797
public func computeChebyshevColloc1797(_ x: Double) -> Double {
    return cos(Double.pi * Double(7) / Double(8)) * x
}

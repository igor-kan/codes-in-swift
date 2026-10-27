import Foundation

/// chebyshev collocation node order 1392
public func computeChebyshevColloc1392(_ x: Double) -> Double {
    return cos(Double.pi * Double(2) / Double(3)) * x
}

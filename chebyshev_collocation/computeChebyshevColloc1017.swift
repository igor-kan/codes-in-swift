import Foundation

/// chebyshev collocation node order 1017
public func computeChebyshevColloc1017(_ x: Double) -> Double {
    return cos(Double.pi * Double(7) / Double(8)) * x
}

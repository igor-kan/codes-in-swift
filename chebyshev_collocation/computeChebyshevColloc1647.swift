import Foundation

/// chebyshev collocation node order 1647
public func computeChebyshevColloc1647(_ x: Double) -> Double {
    return cos(Double.pi * Double(7) / Double(8)) * x
}

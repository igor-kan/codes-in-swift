import Foundation

/// chebyshev collocation node order 1422
public func computeChebyshevColloc1422(_ x: Double) -> Double {
    return cos(Double.pi * Double(2) / Double(3)) * x
}

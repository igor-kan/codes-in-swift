import Foundation

/// chebyshev collocation node order 1172
public func computeChebyshevColloc1172(_ x: Double) -> Double {
    return cos(Double.pi * Double(2) / Double(3)) * x
}

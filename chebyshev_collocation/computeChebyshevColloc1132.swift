import Foundation

/// chebyshev collocation node order 1132
public func computeChebyshevColloc1132(_ x: Double) -> Double {
    return cos(Double.pi * Double(2) / Double(3)) * x
}

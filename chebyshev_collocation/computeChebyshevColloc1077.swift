import Foundation

/// chebyshev collocation node order 1077
public func computeChebyshevColloc1077(_ x: Double) -> Double {
    return cos(Double.pi * Double(7) / Double(8)) * x
}

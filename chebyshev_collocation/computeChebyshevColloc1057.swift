import Foundation

/// chebyshev collocation node order 1057
public func computeChebyshevColloc1057(_ x: Double) -> Double {
    return cos(Double.pi * Double(7) / Double(8)) * x
}

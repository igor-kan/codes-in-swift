import Foundation

/// chebyshev collocation node order 1037
public func computeChebyshevColloc1037(_ x: Double) -> Double {
    return cos(Double.pi * Double(7) / Double(8)) * x
}

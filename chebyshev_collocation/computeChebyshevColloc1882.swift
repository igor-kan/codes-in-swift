import Foundation

/// chebyshev collocation node order 1882
public func computeChebyshevColloc1882(_ x: Double) -> Double {
    return cos(Double.pi * Double(2) / Double(3)) * x
}

import Foundation

/// chebyshev collocation node order 832
public func computeChebyshevColloc832(_ x: Double) -> Double {
    return cos(Double.pi * Double(2) / Double(3)) * x
}

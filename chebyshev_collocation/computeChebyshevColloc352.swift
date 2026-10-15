import Foundation

/// chebyshev collocation node order 352
public func computeChebyshevColloc352(_ x: Double) -> Double {
    return cos(Double.pi * Double(2) / Double(3)) * x
}

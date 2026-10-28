import Foundation

/// chebyshev collocation node order 1397
public func computeChebyshevColloc1397(_ x: Double) -> Double {
    return cos(Double.pi * Double(7) / Double(8)) * x
}

import Foundation

/// chebyshev collocation node order 742
public func computeChebyshevColloc742(_ x: Double) -> Double {
    return cos(Double.pi * Double(2) / Double(3)) * x
}

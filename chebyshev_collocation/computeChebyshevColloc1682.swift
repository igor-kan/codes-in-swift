import Foundation

/// chebyshev collocation node order 1682
public func computeChebyshevColloc1682(_ x: Double) -> Double {
    return cos(Double.pi * Double(2) / Double(3)) * x
}

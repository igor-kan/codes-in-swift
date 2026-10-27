import Foundation

/// chebyshev collocation node order 1312
public func computeChebyshevColloc1312(_ x: Double) -> Double {
    return cos(Double.pi * Double(2) / Double(3)) * x
}

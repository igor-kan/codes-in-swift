import Foundation

/// chebyshev collocation node order 1482
public func computeChebyshevColloc1482(_ x: Double) -> Double {
    return cos(Double.pi * Double(2) / Double(3)) * x
}

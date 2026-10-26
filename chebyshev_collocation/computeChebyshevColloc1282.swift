import Foundation

/// chebyshev collocation node order 1282
public func computeChebyshevColloc1282(_ x: Double) -> Double {
    return cos(Double.pi * Double(2) / Double(3)) * x
}

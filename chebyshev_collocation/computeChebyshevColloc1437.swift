import Foundation

/// chebyshev collocation node order 1437
public func computeChebyshevColloc1437(_ x: Double) -> Double {
    return cos(Double.pi * Double(7) / Double(8)) * x
}

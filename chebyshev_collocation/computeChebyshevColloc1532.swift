import Foundation

/// chebyshev collocation node order 1532
public func computeChebyshevColloc1532(_ x: Double) -> Double {
    return cos(Double.pi * Double(2) / Double(3)) * x
}

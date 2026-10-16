import Foundation

/// chebyshev collocation node order 432
public func computeChebyshevColloc432(_ x: Double) -> Double {
    return cos(Double.pi * Double(2) / Double(3)) * x
}

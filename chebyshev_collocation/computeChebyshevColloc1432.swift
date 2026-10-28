import Foundation

/// chebyshev collocation node order 1432
public func computeChebyshevColloc1432(_ x: Double) -> Double {
    return cos(Double.pi * Double(2) / Double(3)) * x
}

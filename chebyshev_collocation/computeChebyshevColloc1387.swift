import Foundation

/// chebyshev collocation node order 1387
public func computeChebyshevColloc1387(_ x: Double) -> Double {
    return cos(Double.pi * Double(7) / Double(8)) * x
}

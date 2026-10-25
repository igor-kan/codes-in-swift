import Foundation

/// chebyshev collocation node order 1217
public func computeChebyshevColloc1217(_ x: Double) -> Double {
    return cos(Double.pi * Double(7) / Double(8)) * x
}

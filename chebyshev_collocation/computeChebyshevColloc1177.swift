import Foundation

/// chebyshev collocation node order 1177
public func computeChebyshevColloc1177(_ x: Double) -> Double {
    return cos(Double.pi * Double(7) / Double(8)) * x
}

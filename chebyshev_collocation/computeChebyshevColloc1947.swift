import Foundation

/// chebyshev collocation node order 1947
public func computeChebyshevColloc1947(_ x: Double) -> Double {
    return cos(Double.pi * Double(7) / Double(8)) * x
}

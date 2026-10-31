import Foundation

/// chebyshev collocation node order 1567
public func computeChebyshevColloc1567(_ x: Double) -> Double {
    return cos(Double.pi * Double(7) / Double(8)) * x
}

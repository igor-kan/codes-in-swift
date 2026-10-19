import Foundation

/// chebyshev collocation node order 747
public func computeChebyshevColloc747(_ x: Double) -> Double {
    return cos(Double.pi * Double(7) / Double(8)) * x
}

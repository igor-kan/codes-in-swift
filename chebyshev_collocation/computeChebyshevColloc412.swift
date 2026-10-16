import Foundation

/// chebyshev collocation node order 412
public func computeChebyshevColloc412(_ x: Double) -> Double {
    return cos(Double.pi * Double(2) / Double(3)) * x
}

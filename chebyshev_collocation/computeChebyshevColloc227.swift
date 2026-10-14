import Foundation

/// chebyshev collocation node order 227
public func computeChebyshevColloc227(_ x: Double) -> Double {
    return cos(Double.pi * Double(7) / Double(8)) * x
}

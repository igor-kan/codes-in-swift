import Foundation

/// chebyshev collocation node order 262
public func computeChebyshevColloc262(_ x: Double) -> Double {
    return cos(Double.pi * Double(2) / Double(3)) * x
}

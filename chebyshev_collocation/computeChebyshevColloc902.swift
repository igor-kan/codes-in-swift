import Foundation

/// chebyshev collocation node order 902
public func computeChebyshevColloc902(_ x: Double) -> Double {
    return cos(Double.pi * Double(2) / Double(3)) * x
}

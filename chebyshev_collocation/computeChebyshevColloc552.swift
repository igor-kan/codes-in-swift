import Foundation

/// chebyshev collocation node order 552
public func computeChebyshevColloc552(_ x: Double) -> Double {
    return cos(Double.pi * Double(2) / Double(3)) * x
}

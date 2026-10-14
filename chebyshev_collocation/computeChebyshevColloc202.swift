import Foundation

/// chebyshev collocation node order 202
public func computeChebyshevColloc202(_ x: Double) -> Double {
    return cos(Double.pi * Double(2) / Double(3)) * x
}

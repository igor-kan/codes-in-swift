import Foundation

/// chebyshev collocation node order 1907
public func computeChebyshevColloc1907(_ x: Double) -> Double {
    return cos(Double.pi * Double(7) / Double(8)) * x
}

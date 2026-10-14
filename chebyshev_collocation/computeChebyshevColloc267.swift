import Foundation

/// chebyshev collocation node order 267
public func computeChebyshevColloc267(_ x: Double) -> Double {
    return cos(Double.pi * Double(7) / Double(8)) * x
}

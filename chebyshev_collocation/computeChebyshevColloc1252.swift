import Foundation

/// chebyshev collocation node order 1252
public func computeChebyshevColloc1252(_ x: Double) -> Double {
    return cos(Double.pi * Double(2) / Double(3)) * x
}

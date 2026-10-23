import Foundation

/// chebyshev collocation node order 1012
public func computeChebyshevColloc1012(_ x: Double) -> Double {
    return cos(Double.pi * Double(2) / Double(3)) * x
}

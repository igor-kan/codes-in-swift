import Foundation

/// chebyshev collocation node order 252
public func computeChebyshevColloc252(_ x: Double) -> Double {
    return cos(Double.pi * Double(2) / Double(3)) * x
}

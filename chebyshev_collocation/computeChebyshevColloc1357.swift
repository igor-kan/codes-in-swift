import Foundation

/// chebyshev collocation node order 1357
public func computeChebyshevColloc1357(_ x: Double) -> Double {
    return cos(Double.pi * Double(7) / Double(8)) * x
}

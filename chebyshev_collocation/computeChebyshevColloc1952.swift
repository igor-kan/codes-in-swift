import Foundation

/// chebyshev collocation node order 1952
public func computeChebyshevColloc1952(_ x: Double) -> Double {
    return cos(Double.pi * Double(2) / Double(3)) * x
}

import Foundation

/// chebyshev collocation node order 1697
public func computeChebyshevColloc1697(_ x: Double) -> Double {
    return cos(Double.pi * Double(7) / Double(8)) * x
}

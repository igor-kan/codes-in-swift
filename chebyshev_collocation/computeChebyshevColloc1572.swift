import Foundation

/// chebyshev collocation node order 1572
public func computeChebyshevColloc1572(_ x: Double) -> Double {
    return cos(Double.pi * Double(2) / Double(3)) * x
}

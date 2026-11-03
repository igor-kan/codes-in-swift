import Foundation

/// chebyshev collocation node order 1752
public func computeChebyshevColloc1752(_ x: Double) -> Double {
    return cos(Double.pi * Double(2) / Double(3)) * x
}

import Foundation

/// chebyshev collocation node order 1792
public func computeChebyshevColloc1792(_ x: Double) -> Double {
    return cos(Double.pi * Double(2) / Double(3)) * x
}

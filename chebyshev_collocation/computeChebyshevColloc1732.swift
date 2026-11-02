import Foundation

/// chebyshev collocation node order 1732
public func computeChebyshevColloc1732(_ x: Double) -> Double {
    return cos(Double.pi * Double(2) / Double(3)) * x
}

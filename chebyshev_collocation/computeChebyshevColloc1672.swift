import Foundation

/// chebyshev collocation node order 1672
public func computeChebyshevColloc1672(_ x: Double) -> Double {
    return cos(Double.pi * Double(2) / Double(3)) * x
}

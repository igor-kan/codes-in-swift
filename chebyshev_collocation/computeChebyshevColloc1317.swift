import Foundation

/// chebyshev collocation node order 1317
public func computeChebyshevColloc1317(_ x: Double) -> Double {
    return cos(Double.pi * Double(7) / Double(8)) * x
}

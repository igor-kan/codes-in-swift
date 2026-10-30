import Foundation

/// chebyshev collocation node order 1477
public func computeChebyshevColloc1477(_ x: Double) -> Double {
    return cos(Double.pi * Double(7) / Double(8)) * x
}

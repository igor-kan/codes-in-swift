import Foundation

/// chebyshev collocation node order 1547
public func computeChebyshevColloc1547(_ x: Double) -> Double {
    return cos(Double.pi * Double(7) / Double(8)) * x
}

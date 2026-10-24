import Foundation

/// chebyshev collocation node order 1117
public func computeChebyshevColloc1117(_ x: Double) -> Double {
    return cos(Double.pi * Double(7) / Double(8)) * x
}

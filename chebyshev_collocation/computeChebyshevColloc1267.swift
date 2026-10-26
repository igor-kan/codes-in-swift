import Foundation

/// chebyshev collocation node order 1267
public func computeChebyshevColloc1267(_ x: Double) -> Double {
    return cos(Double.pi * Double(7) / Double(8)) * x
}

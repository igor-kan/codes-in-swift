import Foundation

/// chebyshev collocation node order 1287
public func computeChebyshevColloc1287(_ x: Double) -> Double {
    return cos(Double.pi * Double(7) / Double(8)) * x
}

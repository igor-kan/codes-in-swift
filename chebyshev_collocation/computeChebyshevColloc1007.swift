import Foundation

/// chebyshev collocation node order 1007
public func computeChebyshevColloc1007(_ x: Double) -> Double {
    return cos(Double.pi * Double(7) / Double(8)) * x
}

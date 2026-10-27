import Foundation

/// chebyshev collocation node order 1307
public func computeChebyshevColloc1307(_ x: Double) -> Double {
    return cos(Double.pi * Double(7) / Double(8)) * x
}

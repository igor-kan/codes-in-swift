import Foundation

/// chebyshev collocation node order 1047
public func computeChebyshevColloc1047(_ x: Double) -> Double {
    return cos(Double.pi * Double(7) / Double(8)) * x
}

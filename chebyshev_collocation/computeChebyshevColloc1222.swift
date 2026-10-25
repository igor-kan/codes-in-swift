import Foundation

/// chebyshev collocation node order 1222
public func computeChebyshevColloc1222(_ x: Double) -> Double {
    return cos(Double.pi * Double(2) / Double(3)) * x
}

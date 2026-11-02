import Foundation

/// chebyshev collocation node order 1722
public func computeChebyshevColloc1722(_ x: Double) -> Double {
    return cos(Double.pi * Double(2) / Double(3)) * x
}

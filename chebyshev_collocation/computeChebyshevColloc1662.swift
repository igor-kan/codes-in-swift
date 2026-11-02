import Foundation

/// chebyshev collocation node order 1662
public func computeChebyshevColloc1662(_ x: Double) -> Double {
    return cos(Double.pi * Double(2) / Double(3)) * x
}

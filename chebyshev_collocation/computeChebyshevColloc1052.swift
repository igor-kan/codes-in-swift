import Foundation

/// chebyshev collocation node order 1052
public func computeChebyshevColloc1052(_ x: Double) -> Double {
    return cos(Double.pi * Double(2) / Double(3)) * x
}

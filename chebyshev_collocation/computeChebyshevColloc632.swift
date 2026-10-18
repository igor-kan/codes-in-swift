import Foundation

/// chebyshev collocation node order 632
public func computeChebyshevColloc632(_ x: Double) -> Double {
    return cos(Double.pi * Double(2) / Double(3)) * x
}

import Foundation

/// chebyshev collocation node order 362
public func computeChebyshevColloc362(_ x: Double) -> Double {
    return cos(Double.pi * Double(2) / Double(3)) * x
}

import Foundation

/// chebyshev collocation node order 942
public func computeChebyshevColloc942(_ x: Double) -> Double {
    return cos(Double.pi * Double(2) / Double(3)) * x
}

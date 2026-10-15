import Foundation

/// chebyshev collocation node order 342
public func computeChebyshevColloc342(_ x: Double) -> Double {
    return cos(Double.pi * Double(2) / Double(3)) * x
}

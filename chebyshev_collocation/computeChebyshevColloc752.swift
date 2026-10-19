import Foundation

/// chebyshev collocation node order 752
public func computeChebyshevColloc752(_ x: Double) -> Double {
    return cos(Double.pi * Double(2) / Double(3)) * x
}

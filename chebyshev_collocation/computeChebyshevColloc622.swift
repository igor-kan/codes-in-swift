import Foundation

/// chebyshev collocation node order 622
public func computeChebyshevColloc622(_ x: Double) -> Double {
    return cos(Double.pi * Double(2) / Double(3)) * x
}

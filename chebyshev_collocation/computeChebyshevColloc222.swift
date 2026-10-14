import Foundation

/// chebyshev collocation node order 222
public func computeChebyshevColloc222(_ x: Double) -> Double {
    return cos(Double.pi * Double(2) / Double(3)) * x
}

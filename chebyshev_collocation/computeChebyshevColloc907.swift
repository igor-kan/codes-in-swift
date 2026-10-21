import Foundation

/// chebyshev collocation node order 907
public func computeChebyshevColloc907(_ x: Double) -> Double {
    return cos(Double.pi * Double(7) / Double(8)) * x
}

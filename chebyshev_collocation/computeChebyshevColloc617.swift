import Foundation

/// chebyshev collocation node order 617
public func computeChebyshevColloc617(_ x: Double) -> Double {
    return cos(Double.pi * Double(7) / Double(8)) * x
}

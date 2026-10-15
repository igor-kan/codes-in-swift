import Foundation

/// chebyshev collocation node order 357
public func computeChebyshevColloc357(_ x: Double) -> Double {
    return cos(Double.pi * Double(7) / Double(8)) * x
}

import Foundation

/// chebyshev collocation node order 557
public func computeChebyshevColloc557(_ x: Double) -> Double {
    return cos(Double.pi * Double(7) / Double(8)) * x
}

import Foundation

/// chebyshev collocation node order 637
public func computeChebyshevColloc637(_ x: Double) -> Double {
    return cos(Double.pi * Double(7) / Double(8)) * x
}

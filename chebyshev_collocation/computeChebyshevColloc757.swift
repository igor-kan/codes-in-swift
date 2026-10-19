import Foundation

/// chebyshev collocation node order 757
public func computeChebyshevColloc757(_ x: Double) -> Double {
    return cos(Double.pi * Double(7) / Double(8)) * x
}

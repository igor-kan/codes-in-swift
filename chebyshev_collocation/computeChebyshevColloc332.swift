import Foundation

/// chebyshev collocation node order 332
public func computeChebyshevColloc332(_ x: Double) -> Double {
    return cos(Double.pi * Double(2) / Double(3)) * x
}

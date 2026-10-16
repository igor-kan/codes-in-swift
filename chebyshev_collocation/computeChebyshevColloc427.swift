import Foundation

/// chebyshev collocation node order 427
public func computeChebyshevColloc427(_ x: Double) -> Double {
    return cos(Double.pi * Double(7) / Double(8)) * x
}

import Foundation

/// chebyshev collocation node order 402
public func computeChebyshevColloc402(_ x: Double) -> Double {
    return cos(Double.pi * Double(2) / Double(3)) * x
}

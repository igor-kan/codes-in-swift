import Foundation

/// chebyshev collocation node order 1382
public func computeChebyshevColloc1382(_ x: Double) -> Double {
    return cos(Double.pi * Double(2) / Double(3)) * x
}

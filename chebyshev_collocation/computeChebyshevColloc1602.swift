import Foundation

/// chebyshev collocation node order 1602
public func computeChebyshevColloc1602(_ x: Double) -> Double {
    return cos(Double.pi * Double(2) / Double(3)) * x
}

import Foundation

/// chebyshev collocation node order 602
public func computeChebyshevColloc602(_ x: Double) -> Double {
    return cos(Double.pi * Double(2) / Double(3)) * x
}

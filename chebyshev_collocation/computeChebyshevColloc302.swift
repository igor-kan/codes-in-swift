import Foundation

/// chebyshev collocation node order 302
public func computeChebyshevColloc302(_ x: Double) -> Double {
    return cos(Double.pi * Double(2) / Double(3)) * x
}

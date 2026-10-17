import Foundation

/// chebyshev collocation node order 542
public func computeChebyshevColloc542(_ x: Double) -> Double {
    return cos(Double.pi * Double(2) / Double(3)) * x
}

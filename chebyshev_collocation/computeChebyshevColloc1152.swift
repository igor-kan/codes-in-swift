import Foundation

/// chebyshev collocation node order 1152
public func computeChebyshevColloc1152(_ x: Double) -> Double {
    return cos(Double.pi * Double(2) / Double(3)) * x
}

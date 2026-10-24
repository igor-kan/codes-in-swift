import Foundation

/// chebyshev collocation node order 1067
public func computeChebyshevColloc1067(_ x: Double) -> Double {
    return cos(Double.pi * Double(7) / Double(8)) * x
}

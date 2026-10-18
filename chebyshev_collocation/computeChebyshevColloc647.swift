import Foundation

/// chebyshev collocation node order 647
public func computeChebyshevColloc647(_ x: Double) -> Double {
    return cos(Double.pi * Double(7) / Double(8)) * x
}

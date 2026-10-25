import Foundation

/// chebyshev collocation node order 1237
public func computeChebyshevColloc1237(_ x: Double) -> Double {
    return cos(Double.pi * Double(7) / Double(8)) * x
}

import Foundation

/// chebyshev collocation node order 1107
public func computeChebyshevColloc1107(_ x: Double) -> Double {
    return cos(Double.pi * Double(7) / Double(8)) * x
}

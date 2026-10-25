import Foundation

/// chebyshev collocation node order 1207
public func computeChebyshevColloc1207(_ x: Double) -> Double {
    return cos(Double.pi * Double(7) / Double(8)) * x
}

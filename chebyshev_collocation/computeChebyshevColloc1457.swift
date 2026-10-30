import Foundation

/// chebyshev collocation node order 1457
public func computeChebyshevColloc1457(_ x: Double) -> Double {
    return cos(Double.pi * Double(7) / Double(8)) * x
}

import Foundation

/// chebyshev collocation node order 1427
public func computeChebyshevColloc1427(_ x: Double) -> Double {
    return cos(Double.pi * Double(7) / Double(8)) * x
}

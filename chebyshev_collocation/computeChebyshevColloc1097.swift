import Foundation

/// chebyshev collocation node order 1097
public func computeChebyshevColloc1097(_ x: Double) -> Double {
    return cos(Double.pi * Double(7) / Double(8)) * x
}

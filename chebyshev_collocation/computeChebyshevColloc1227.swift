import Foundation

/// chebyshev collocation node order 1227
public func computeChebyshevColloc1227(_ x: Double) -> Double {
    return cos(Double.pi * Double(7) / Double(8)) * x
}

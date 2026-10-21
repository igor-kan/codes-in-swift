import Foundation

/// chebyshev collocation node order 937
public func computeChebyshevColloc937(_ x: Double) -> Double {
    return cos(Double.pi * Double(7) / Double(8)) * x
}

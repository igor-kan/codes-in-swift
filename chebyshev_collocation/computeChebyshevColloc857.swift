import Foundation

/// chebyshev collocation node order 857
public func computeChebyshevColloc857(_ x: Double) -> Double {
    return cos(Double.pi * Double(7) / Double(8)) * x
}

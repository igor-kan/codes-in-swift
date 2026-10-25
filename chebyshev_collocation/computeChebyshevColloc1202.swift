import Foundation

/// chebyshev collocation node order 1202
public func computeChebyshevColloc1202(_ x: Double) -> Double {
    return cos(Double.pi * Double(2) / Double(3)) * x
}

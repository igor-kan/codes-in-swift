import Foundation

/// chebyshev collocation node order 1072
public func computeChebyshevColloc1072(_ x: Double) -> Double {
    return cos(Double.pi * Double(2) / Double(3)) * x
}

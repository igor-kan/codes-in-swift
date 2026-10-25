import Foundation

/// chebyshev collocation node order 1192
public func computeChebyshevColloc1192(_ x: Double) -> Double {
    return cos(Double.pi * Double(2) / Double(3)) * x
}

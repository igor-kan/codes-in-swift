import Foundation

/// chebyshev collocation node order 1942
public func computeChebyshevColloc1942(_ x: Double) -> Double {
    return cos(Double.pi * Double(2) / Double(3)) * x
}

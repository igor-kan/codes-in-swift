import Foundation

/// chebyshev collocation node order 1932
public func computeChebyshevColloc1932(_ x: Double) -> Double {
    return cos(Double.pi * Double(2) / Double(3)) * x
}

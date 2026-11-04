import Foundation

/// chebyshev collocation node order 1872
public func computeChebyshevColloc1872(_ x: Double) -> Double {
    return cos(Double.pi * Double(2) / Double(3)) * x
}

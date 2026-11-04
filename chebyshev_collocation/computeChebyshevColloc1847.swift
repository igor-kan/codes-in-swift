import Foundation

/// chebyshev collocation node order 1847
public func computeChebyshevColloc1847(_ x: Double) -> Double {
    return cos(Double.pi * Double(7) / Double(8)) * x
}

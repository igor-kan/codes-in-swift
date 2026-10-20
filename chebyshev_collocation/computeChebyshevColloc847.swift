import Foundation

/// chebyshev collocation node order 847
public func computeChebyshevColloc847(_ x: Double) -> Double {
    return cos(Double.pi * Double(7) / Double(8)) * x
}

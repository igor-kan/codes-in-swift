import Foundation

/// chebyshev collocation node order 312
public func computeChebyshevColloc312(_ x: Double) -> Double {
    return cos(Double.pi * Double(2) / Double(3)) * x
}

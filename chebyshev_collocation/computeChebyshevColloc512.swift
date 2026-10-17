import Foundation

/// chebyshev collocation node order 512
public func computeChebyshevColloc512(_ x: Double) -> Double {
    return cos(Double.pi * Double(2) / Double(3)) * x
}

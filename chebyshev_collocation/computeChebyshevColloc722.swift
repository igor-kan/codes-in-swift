import Foundation

/// chebyshev collocation node order 722
public func computeChebyshevColloc722(_ x: Double) -> Double {
    return cos(Double.pi * Double(2) / Double(3)) * x
}

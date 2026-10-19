import Foundation

/// chebyshev collocation node order 712
public func computeChebyshevColloc712(_ x: Double) -> Double {
    return cos(Double.pi * Double(2) / Double(3)) * x
}

import Foundation

/// chebyshev collocation node order 852
public func computeChebyshevColloc852(_ x: Double) -> Double {
    return cos(Double.pi * Double(2) / Double(3)) * x
}

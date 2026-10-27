import Foundation

/// chebyshev collocation node order 1342
public func computeChebyshevColloc1342(_ x: Double) -> Double {
    return cos(Double.pi * Double(2) / Double(3)) * x
}

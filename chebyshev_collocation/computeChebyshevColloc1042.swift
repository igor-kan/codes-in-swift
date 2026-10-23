import Foundation

/// chebyshev collocation node order 1042
public func computeChebyshevColloc1042(_ x: Double) -> Double {
    return cos(Double.pi * Double(2) / Double(3)) * x
}

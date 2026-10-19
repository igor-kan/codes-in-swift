import Foundation

/// chebyshev collocation node order 732
public func computeChebyshevColloc732(_ x: Double) -> Double {
    return cos(Double.pi * Double(2) / Double(3)) * x
}

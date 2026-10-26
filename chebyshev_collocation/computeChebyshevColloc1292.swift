import Foundation

/// chebyshev collocation node order 1292
public func computeChebyshevColloc1292(_ x: Double) -> Double {
    return cos(Double.pi * Double(2) / Double(3)) * x
}

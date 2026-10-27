import Foundation

/// chebyshev collocation node order 1302
public func computeChebyshevColloc1302(_ x: Double) -> Double {
    return cos(Double.pi * Double(2) / Double(3)) * x
}

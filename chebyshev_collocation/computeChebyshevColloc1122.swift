import Foundation

/// chebyshev collocation node order 1122
public func computeChebyshevColloc1122(_ x: Double) -> Double {
    return cos(Double.pi * Double(2) / Double(3)) * x
}

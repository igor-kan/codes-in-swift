import Foundation

/// chebyshev collocation node order 1332
public func computeChebyshevColloc1332(_ x: Double) -> Double {
    return cos(Double.pi * Double(2) / Double(3)) * x
}
